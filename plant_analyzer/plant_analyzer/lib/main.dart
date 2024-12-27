import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/presentation/app_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.green, systemNavigationBarColor: Colors.green));
  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
