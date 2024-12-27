import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plant_analyzer/detection/Application/detection_setting_notifier.dart';
import 'package:plant_analyzer/detection/infrastructure/detection_repo.dart';

part 'detection_notifier.freezed.dart';

@freezed
class DetectionState with _$DetectionState {
  const DetectionState._();
  const factory DetectionState.initial() = _Initial;
  const factory DetectionState.loading() = _Loading;
  const factory DetectionState.predicted(File predictedImage) = _Predicted;
  const factory DetectionState.failure(String failure) = _Failure;
}

class DetectionNotifier extends StateNotifier<DetectionState> {
  DetectionNotifier(this._detectionRepo, this._setting)
      : super(DetectionState.initial());

  final DetectionRepo _detectionRepo;
  final DetectionSetting _setting;

  Future<void> predictonImage(File image) async {
    state = DetectionState.loading();
    print(_setting);
    File predictedImage = await _detectionRepo.performInference(
      image,
      arabic: _setting.arabic,
      drawbox: _setting.drawbox,
      drawconfidence: _setting.drawconfidence,
      drawlabel: _setting.drawlabel,
      threshold: _setting.threshold,
    );

    print('Notifier => $predictedImage');
    state = DetectionState.predicted(predictedImage);
  }

  Future<void> reset() async {
    print('Resetting Notifier *******');
    state = DetectionState.initial();
    await Future.delayed(Duration(seconds: 1));
  }
}
