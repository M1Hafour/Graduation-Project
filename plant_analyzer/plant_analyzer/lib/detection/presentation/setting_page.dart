// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:plant_analyzer/core/constants.dart';
import 'package:plant_analyzer/core/presentation/components/background_container.dart';
import 'package:plant_analyzer/core/providers.dart';

import 'label_switch.dart';

@RoutePage()
class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _detectionSettingNotifier =
        ref.watch(detectionSettingNotifier.notifier);

    final _detectionSetting = ref.watch(detectionSettingNotifier);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('Setting',
            style: GoogleFonts.epilogue(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
      ),
      body: BackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              LabelSwitch(
                  currentValue: _detectionSetting.arabic,
                  label: 'Arabic',
                  onChanged: (newValue) =>
                      _detectionSettingNotifier.updateArabic(newValue)),
              LabelSwitch(
                  currentValue: _detectionSetting.drawbox,
                  label: 'Bounding Box',
                  onChanged: (newValue) =>
                      _detectionSettingNotifier.updateDrawbox(newValue)),
              LabelSwitch(
                  currentValue: _detectionSetting.drawlabel,
                  label: 'Label',
                  onChanged: (newValue) =>
                      _detectionSettingNotifier.updatedrawlabel(newValue)),
              LabelSwitch(
                  currentValue: _detectionSetting.drawconfidence,
                  label: 'Confidence',
                  onChanged: (newValue) =>
                      _detectionSettingNotifier.updatedrawconf(newValue)),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: kDefaultPadding, right: kDefaultPadding),
                    child: Text(
                      'Threshold',
                      style: GoogleFonts.epilogue(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: _detectionSetting.threshold.toString(),
                      onFieldSubmitted: (value) {
                        if (double.tryParse(value) != null) {
                          double? newValue = double.tryParse(value);
                          if (newValue! < 0) {
                            return;
                          }
                          if (newValue > 1) {
                            _detectionSettingNotifier
                                .updateThreshold(newValue / 100);
                          } else {
                            _detectionSettingNotifier.updateThreshold(newValue);
                          }
                        }
                      },
                      style: GoogleFonts.epilogue(
                        color: Colors.green.shade800,
                        fontSize: 14,
                      ),
                      cursorColor: Colors.green,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
