from flask import Flask, redirect, url_for, request, send_file
from PIL import Image as PILIMAGE
import numpy as np
import io
import cv2
import os
from ultralytics import YOLO
import random

from helper_methods import *


os.environ["KMP_DUPLICATE_LIB_OK"] = "TRUE"


app = Flask(__name__)

# Load a model
model = YOLO('predictionapi/best.pt')


@app.post("/file")
def file():
    uploaded_file = request.files['file']
    threshold = request.form.get('threshold', 0.4)
    
    drawbox = str2bool(request.form.get('drawbox', False))
    drawlabel = str2bool(request.form.get('drawlabel', True))
    arabic = str2bool(request.form.get('arabic', True))
    drawconfidence = str2bool(request.form.get('drawconfidence', False))
    if uploaded_file.filename != '':
        # uploaded_file.save(uploaded_file.filename)
        image = perfomPredictions(uploaded_file.read(), drawbox=drawbox,
                                   arabic=arabic, drawlabel=drawlabel, drawconfidence=drawconfidence, threshold=float(threshold))
        # return f'Got your file {uploaded_file.filename}'
        randomint = random.randint(0,99999)
        image.save(f"images/{randomint}{uploaded_file.filename}")
        return send_file(f"images/{randomint}{uploaded_file.filename}")

    return "yoho"


def perfomPredictions(
        recievedfile,
        threshold = 0.4,
        drawbox = False,
        drawlabel = True,
        arabic = False,
        drawconfidence = False
        ):
    img = PILIMAGE.open(io.BytesIO(recievedfile))
    
    res = model.predict(source=img, conf = threshold)
    plotted = newPlot(res[0],boxes = drawbox, labels = drawlabel ,conf= drawconfidence, arabic=arabic)
    img = cv2.cvtColor(plotted, cv2.COLOR_BGR2RGB)
    image = PILIMAGE.fromarray(img)
    return image



if __name__ == '__main__':
    # Local Run Only work in Same Computer
    # app.run(host='127.0.0.1', port=5000, debug=True, threaded=True)
    #  LAN Run Works in same LAN Network
    app.run(host='192.168.182.64', port=5000, debug=False, threaded=True)
