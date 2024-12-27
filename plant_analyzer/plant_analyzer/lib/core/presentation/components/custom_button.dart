import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.filled});
  final String label;
  final VoidCallback onPressed;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          alignment: Alignment.center,
          height: 56,
          decoration: BoxDecoration(
            color: filled ? Colors.green : Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius:
                const BorderRadius.all(Radius.circular(kDefaultPadding)),
          ),
          child: Text(
            label,
            style:
                GoogleFonts.epilogue(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
