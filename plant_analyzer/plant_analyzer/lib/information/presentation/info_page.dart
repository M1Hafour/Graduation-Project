import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_analyzer/core/presentation/components/background_container.dart';
import 'package:plant_analyzer/core/presentation/components/custom_button.dart';
import 'package:plant_analyzer/core/presentation/routes/app_router.dart';
import 'package:plant_analyzer/information/domain/disease_info.dart';

import '../../core/constants.dart';

@RoutePage()
class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(children: [
          Image.asset('assets/images/logo2.png', width: 54, height: 54),
          const SizedBox(width: kDefaultPadding * 0.75),
          Text('Information',
              style: GoogleFonts.epilogue(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ))
        ]),
      ),
      body: BackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomButton(
                  label: 'Stem Rust',
                  onPressed: () {
                    AutoRouter.of(context).push(
                      DiseaseRoute(
                        info: stemrust,
                        imagePath: 'assets/images/stem.jpg',
                      ),
                    );
                  },
                  filled: true),
              CustomButton(
                  label: 'Yellow-Rust',
                  onPressed: () {
                    AutoRouter.of(context).push(
                      DiseaseRoute(
                        info: yellowrust,
                        imagePath: 'assets/images/yellow.jpg',
                      ),
                    );
                  },
                  filled: false),
              CustomButton(
                  label: 'Septoria',
                  onPressed: () {
                    AutoRouter.of(context).push(DiseaseRoute(
                      info: septoria,
                      imagePath: 'assets/images/septoria.jpg',
                    ));
                  },
                  filled: true),
              CustomButton(
                  label: 'Powdery Mildew',
                  onPressed: () {
                    AutoRouter.of(context).push(
                      DiseaseRoute(
                        info: powderymildew,
                        imagePath: 'assets/images/powdery.jpg',
                      ),
                    );
                  },
                  filled: false),
            ],
          ),
        ),
      ),
    );
  }
}
