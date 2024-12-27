from copy import deepcopy


import numpy as np
import torch

from ultralytics.data.augment import LetterBox

from CustomPlotting import *

import arabic_reshaper
from bidi.algorithm import get_display



def newPlot(
        self,
        conf=True,
        line_width=None,
        font_size=None,
        font='Arial.ttf',
        pil=True,
        img=None,
        img_gpu=None,
        kpt_line=True,
        labels=True,
        boxes=True,
        masks=True,
        probs=True,
        arabic=False,
        **kwargs  # deprecated args TODO: remove support in 8.2
):
    """
    Plots the detection results on an input RGB image. Accepts a numpy array (cv2) or a PIL Image.

    Args:
        conf (bool): Whether to plot the detection confidence score.
        line_width (float, optional): The line width of the bounding boxes. If None, it is scaled to the image size.
        font_size (float, optional): The font size of the text. If None, it is scaled to the image size.
        font (str): The font to use for the text.
        pil (bool): Whether to return the image as a PIL Image.
        img (numpy.ndarray): Plot to another image. if not, plot to original image.
        img_gpu (torch.Tensor): Normalized image in gpu with shape (1, 3, 640, 640), for faster mask plotting.
        kpt_line (bool): Whether to draw lines connecting keypoints.
        labels (bool): Whether to plot the label of bounding boxes.
        boxes (bool): Whether to plot the bounding boxes.
        masks (bool): Whether to plot the masks.
        probs (bool): Whether to plot classification probability

    Returns:
        (numpy.ndarray): A numpy array of the annotated image.
    """
    names = self.names
    annotator = CustomAnnotator(deepcopy(self.orig_img if img is None else img),
                          line_width,
                          font_size,
                          font,
                          pil,
                          example=names)
    pred_boxes, show_boxes = self.boxes, boxes
    pred_masks, show_masks = self.masks, masks
    pred_probs, show_probs = self.probs, probs   
    keypoints = self.keypoints
    
    if pred_masks and show_masks:
        if img_gpu is None:
            img = LetterBox(pred_masks.shape[1:])(image=annotator.result())
            img_gpu = torch.as_tensor(img, dtype=torch.float16, device=pred_masks.data.device).permute(
                2, 0, 1).flip(0).contiguous() / 255
        idx = pred_boxes.cls if pred_boxes else range(len(pred_masks))
        annotator.masks(pred_masks.data, colors=[colors(x, True) for x in idx], im_gpu=img_gpu)

    if pred_boxes and show_boxes:
        for d in reversed(pred_boxes):
            c, conf, id = int(d.cls), float(d.conf) if conf else None, None if d.id is None else int(d.id.item())
            name = ('' if id is None else f'id:{id} ') + names[c]
            label = (f'{name} {conf:.2f}' if conf else name) if labels else None
            annotator.dDraw_box(d.xyxy.squeeze(), label, color=colors(c, True))

    if pred_boxes and labels:
        for d in reversed(pred_boxes):
            c, conf, id = int(d.cls), float(d.conf) if conf else None, None if d.id is None else int(d.id.item())
            name = ('' if id is None else f'id:{id} ') + names[c]
            EnglishMapping = {"wheat-powdery-mildew": 'Powdery Mildew', 'wheat-septoria': 'Septoria',
                             'wheat-yellowrust':'Yellow Rust', 'wheat-stemrust': 'Stem Rust'}
            ArabicMapping = {"wheat-powdery-mildew": u'البياض الدقيقي', 'wheat-septoria': u'تبقع الأوراق',
                             'wheat-yellowrust':u'الصدأ الأصفر', 'wheat-stemrust': u'صدأ الساق'}
            if( arabic):
              if (name in ArabicMapping): 
                  name = ArabicMapping[name]
                  reshaped_text = arabic_reshaper.reshape(name)
                  name = get_display(reshaped_text)
                  label = (f'{conf:.2f} {name}' if conf else name) if labels else None

            if( not arabic):
              if (name in EnglishMapping): 
                  name = EnglishMapping[name]
                  label = (f'{name} {conf:.2f}' if conf else name) if labels else None
                  
            
            annotator.dDraw_label(d.xyxy.squeeze(), label, color=colors(c, True))

            print('name', name, 'conf' , conf, 'label', label)

    if pred_probs is not None and show_probs:
        text = f"{', '.join(f'{names[j] if names else j} {pred_probs.data[j]:.2f}' for j in pred_probs.top5)}, "
        annotator.text((32, 32), text, txt_color=(255, 255, 255))  # TODO: allow setting colors

    if keypoints is not None:
        for k in reversed(keypoints.data):
            annotator.kpts(k, self.orig_shape, kpt_line=kpt_line)

    return annotator.result()


def str2bool(v):
  if ( isinstance(v, (bool))):
    return v
  else: return v.lower() in ("yes", "true", "t", "1")
