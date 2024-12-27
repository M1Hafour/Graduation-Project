import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../detection/presentation/detection_page.dart';
import '../../../detection/presentation/setting_page.dart';
import '../../../home/presentation/home_page.dart';
import '../../../information/domain/disease_info.dart';
import '../../../information/presentation/disease_page.dart';
import '../../../information/presentation/info_page.dart';
import '../../../splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: DetectionRoute.page),
    AutoRoute(page: InfoRoute.page),
    AutoRoute(page: DiseaseRoute.page),
    AutoRoute(page: SettingsRoute.page)
  ];
}
