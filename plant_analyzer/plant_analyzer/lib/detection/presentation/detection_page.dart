import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_analyzer/core/presentation/components/background_container.dart';
import 'package:plant_analyzer/core/presentation/components/custom_button.dart';
import 'package:plant_analyzer/detection/presentation/image_display.dart';

import '../../core/constants.dart';
import '../../core/presentation/routes/app_router.dart';
import '../../core/providers.dart';

@RoutePage()
class DetectionPage extends ConsumerStatefulWidget {
  final File image;

  DetectionPage(this.image);

  @override
  ConsumerState<DetectionPage> createState() => _DetectionPageState();
}

class _DetectionPageState extends ConsumerState<DetectionPage> {
  var predicted = false;

  late File predictedImage;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 50))
        .then((value) => ref.read(detectionNotifierProvider.notifier).reset());
  }

  @override
  Widget build(BuildContext context) {
    final detectionNotifier = ref.watch(detectionNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('Plant Analyzer',
            style: GoogleFonts.epilogue(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
      ),
      body: BackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageDisplay(image: widget.image),
              if (!predicted)
                CustomButton(
                  label: 'Predict',
                  onPressed: () async {
                    await detectionNotifier.predictonImage(widget.image);
                    setState(() {
                      predicted = true;
                    });
                  },
                  filled: false,
                ),
              if (predicted)
                CustomButton(
                  label: 'Information',
                  onPressed: () async {
                    AutoRouter.of(context).push(InfoRoute());
                  },
                  filled: true,
                )
            ],
          ),
        ),
      ),
    );
  }
}
