import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detection_setting_notifier.freezed.dart';

@freezed
class DetectionSetting with _$DetectionSetting {
  const DetectionSetting._();

  const factory DetectionSetting.initial({
    @Default(0.4) double threshold,
    @Default(false) bool drawbox,
    @Default(false) bool arabic,
    @Default(false) bool drawconfidence,
    @Default(true) bool drawlabel,
  }) = _Initial;
}

class DetectionSettingNotifier extends StateNotifier<DetectionSetting> {
  DetectionSettingNotifier() : super(DetectionSetting.initial());

  void updateThreshold(double threshold) {
    state = state.copyWith(threshold: threshold);
    print(threshold);
  }

  void updateDrawbox(bool newValue) {
    state = state.copyWith(drawbox: newValue);
    print(newValue);
  }

  void updateArabic(bool newValue) {
    state = state.copyWith(arabic: newValue);
    print(newValue);
  }

  void updatedrawlabel(bool newValue) {
    state = state.copyWith(drawlabel: newValue);
    print(newValue);
  }

  void updatedrawconf(bool newValue) {
    state = state.copyWith(drawconfidence: newValue);
    print(newValue);
  }
}
