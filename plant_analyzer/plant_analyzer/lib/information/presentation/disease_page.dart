// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:plant_analyzer/core/presentation/components/background_container.dart';

import '../../core/constants.dart';
import '../domain/chemical_cure.dart';
import '../domain/disease_info.dart';

@RoutePage()
class DiseasePage extends StatelessWidget {
  const DiseasePage({
    Key? key,
    required this.info,
    required this.imagePath,
  }) : super(key: key);
  final DiseaseInfo info;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                imagePath,
                width: size.width,
                height: size.height * 0.2,
                fit: BoxFit.cover,
              ),
              IconButton(
                onPressed: () => AutoRouter.of(context).pop(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Image.asset(
                  'assets/images/logo2.png',
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          BackgroundContainer(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (String s in info.description) ParagraphString(s: s),
                Padding(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: Text(
                    'Cause',
                    style: GoogleFonts.epilogue(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                for (String s in info.cause) ParagraphString(s: s),
                Padding(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: Text(
                    'Chemical Cure',
                    style: GoogleFonts.epilogue(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                for (ChemicalCure cure in info.cure) ...[
                  Padding(
                    padding: const EdgeInsets.only(top: kDefaultPadding),
                    child: GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse(cure.producturl));
                      },
                      child: Text(
                        cure.name,
                        style: GoogleFonts.epilogue(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  for (String s in cure.description) ParagraphString(s: s),
                ]
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class ParagraphString extends StatelessWidget {
  const ParagraphString({
    super.key,
    required this.s,
  });

  final String s;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Text(s, style: GoogleFonts.epilogue(fontSize: 20)),
    );
  }
}
