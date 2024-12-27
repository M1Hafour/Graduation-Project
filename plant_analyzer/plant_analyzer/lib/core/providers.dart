import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plant_analyzer/detection/Application/detection_notifier.dart';
import 'package:plant_analyzer/detection/Application/detection_setting_notifier.dart';
import 'package:plant_analyzer/detection/infrastructure/detection_repo.dart';

final _dioProvider = Provider((ref) => Dio());

final _detectionrepoProvider =
    Provider((ref) => DetectionRepo(ref.watch(_dioProvider)));
final detectionSettingNotifier =
    StateNotifierProvider<DetectionSettingNotifier, DetectionSetting>(
  (ref) => DetectionSettingNotifier(),
);

final detectionNotifierProvider =
    StateNotifierProvider<DetectionNotifier, DetectionState>(
  (ref) => DetectionNotifier(
      ref.watch(_detectionrepoProvider), ref.watch(detectionSettingNotifier)),
);
