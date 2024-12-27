import 'package:flutter/material.dart';
import 'package:plant_analyzer/core/constants.dart';

import 'routes/app_router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Plant Analyzer',
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      theme: themeData,
    );
  }

  final themeData = ThemeData.light().copyWith(
    colorScheme: ColorScheme.light().copyWith(secondary: Colors.green),
    primaryColor: Colors.green,
    inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kDefaultPadding),
          borderSide: BorderSide(color: Colors.green.shade700),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kDefaultPadding),
          borderSide: BorderSide(color: Colors.green.shade700),
        ),
        border: OutlineInputBorder()),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
    ),
  );
}
