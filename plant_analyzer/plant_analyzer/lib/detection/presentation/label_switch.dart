// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants.dart';

class LabelSwitch extends StatelessWidget {
  const LabelSwitch({
    Key? key,
    required this.currentValue,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  final bool currentValue;
  final String label;
  final void Function(bool newValue) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: kDefaultPadding, right: kDefaultPadding),
          child: Text(
            label,
            style: GoogleFonts.epilogue(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        Switch(
          value: currentValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
