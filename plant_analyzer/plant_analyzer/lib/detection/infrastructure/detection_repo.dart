import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:plant_analyzer/core/constants.dart';

class DetectionRepo {
  final Dio _dio;

  DetectionRepo(this._dio);

  Future<File> performInference(
    File img, {
    required double threshold,
    required bool drawbox,
    required bool arabic,
    required bool drawconfidence,
    required bool drawlabel,
  }) async {
    var url = kInferenceURL;
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(img.path),
      'threshold': threshold,
      'drawbox': drawbox,
      'arabic': arabic,
      'drawconfidence': drawconfidence,
      'drawlabel': drawlabel,
    });
    try {
      Response response = await _dio.post(
        data: formData,
        url,
        options: Options(
          headers: {'connection': 'keep-alive'},
          responseType: ResponseType.bytes,
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
      response.requestOptions.headers
          .forEach((key, value) => print('<= >=' + value));
      var tempDir = await getTemporaryDirectory();
      String fullPath = tempDir.path + 'predictedImage' + basename(img.path);
      File file = File(fullPath);
      var raf = file.openSync(mode: FileMode.write);
      // response.data is List<int> type
      raf.writeFromSync(response.data);
      await raf.close();
      img = file;
      return img;
    } catch (e) {
      print(e);
    }
    print(' ***Returning Original image ***');
    return img;
  }

  Future<File> uploadImage(File img) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(img.path),
      'setting': {
        'threshold': 0.4,
      },
      'key': 'hello*'
    });

    final response = await _dio.post(
      kInferenceURL,
      data: formData,
      options: Options(responseType: ResponseType.bytes),
    );
    var tempDir = await getTemporaryDirectory();
    String fullPath = tempDir.path + 'predictedImage' + basename(img.path);
    File file = File(fullPath);
    file.writeAsBytes(response.data);
    return file;
  }
}
