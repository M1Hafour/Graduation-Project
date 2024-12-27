import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_analyzer/core/constants.dart';
import 'package:plant_analyzer/core/presentation/routes/app_router.dart';
import 'package:plant_analyzer/core/providers.dart';

import '../../core/presentation/components/background_container.dart';
import '../../core/presentation/components/custom_button.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(children: [
          Image.asset('assets/images/logo2.png', width: 48, height: 48),
          const SizedBox(width: kDefaultPadding * 0.75),
          Text('Plant Analyzer',
              style: GoogleFonts.epilogue(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ))
        ]),
        actions: [
          IconButton(
              onPressed: () {
                AutoRouter.of(context).push(SettingsRoute());
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: BackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomButton(
                label: 'Camera',
                onPressed: () async {
                  ref.read(detectionNotifierProvider.notifier).reset();
                  Future.delayed(Duration(milliseconds: 300));
                  final image =
                      await _picker.pickImage(source: ImageSource.camera);
                  if (image != null) {
                    AutoRouter.of(context)
                        .push(DetectionRoute(image: File(image.path)));
                  }
                },
                filled: true,
              ),
              CustomButton(
                label: 'Gallery',
                onPressed: () async {
                  final image =
                      await _picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    AutoRouter.of(context)
                        .push(DetectionRoute(image: File(image.path)));
                  }
                },
                filled: false,
              ),
              CustomButton(
                label: 'Information',
                onPressed: () async {
                  AutoRouter.of(context).push(InfoRoute());
                },
                filled: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
