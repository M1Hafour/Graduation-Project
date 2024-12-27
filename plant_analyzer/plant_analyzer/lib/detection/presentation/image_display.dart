import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plant_analyzer/core/providers.dart';

import '../../core/constants.dart';

class ImageDisplay extends ConsumerWidget {
  const ImageDisplay({super.key, required this.image});

  final File image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    var detectionState = ref.watch(detectionNotifierProvider);

    return detectionState.when(
        initial: () => Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding, bottom: kDefaultPadding / 2),
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.4,
                decoration: BoxDecoration(),
                child: Image.file(image),
              ),
            ),
        loading: () => Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding, bottom: kDefaultPadding / 2),
              child: Container(
                // width: size.width * 0.4,
                // height: size.width * 0.4,
                decoration: BoxDecoration(),
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.green,
                  ),
                ),
              ),
            ),
        predicted: (predictedImage) => Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding, bottom: kDefaultPadding / 2),
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.4,
                decoration: BoxDecoration(),
                child: Image.file(predictedImage),
              ),
            ),
        failure: (failure) => Container(color: Colors.black));
  }
}
