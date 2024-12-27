// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DetectionRoute.name: (routeData) {
      final args = routeData.argsAs<DetectionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetectionPage(args.image),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
    InfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfoPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    DiseaseRoute.name: (routeData) {
      final args = routeData.argsAs<DiseaseRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DiseasePage(
          key: args.key,
          info: args.info,
          imagePath: args.imagePath,
        ),
      );
    },
  };
}

/// generated route for
/// [DetectionPage]
class DetectionRoute extends PageRouteInfo<DetectionRouteArgs> {
  DetectionRoute({
    required File image,
    List<PageRouteInfo>? children,
  }) : super(
          DetectionRoute.name,
          args: DetectionRouteArgs(image: image),
          initialChildren: children,
        );

  static const String name = 'DetectionRoute';

  static const PageInfo<DetectionRouteArgs> page =
      PageInfo<DetectionRouteArgs>(name);
}

class DetectionRouteArgs {
  const DetectionRouteArgs({required this.image});

  final File image;

  @override
  String toString() {
    return 'DetectionRouteArgs{image: $image}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [InfoPage]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute({List<PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DiseasePage]
class DiseaseRoute extends PageRouteInfo<DiseaseRouteArgs> {
  DiseaseRoute({
    Key? key,
    required DiseaseInfo info,
    required String imagePath,
    List<PageRouteInfo>? children,
  }) : super(
          DiseaseRoute.name,
          args: DiseaseRouteArgs(
            key: key,
            info: info,
            imagePath: imagePath,
          ),
          initialChildren: children,
        );

  static const String name = 'DiseaseRoute';

  static const PageInfo<DiseaseRouteArgs> page =
      PageInfo<DiseaseRouteArgs>(name);
}

class DiseaseRouteArgs {
  const DiseaseRouteArgs({
    this.key,
    required this.info,
    required this.imagePath,
  });

  final Key? key;

  final DiseaseInfo info;

  final String imagePath;

  @override
  String toString() {
    return 'DiseaseRouteArgs{key: $key, info: $info, imagePath: $imagePath}';
  }
}
