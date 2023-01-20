import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/custom_input_text.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteInformationItem extends StatelessWidget {
  const CompleteInformationItem(
      {super.key, required this.title, this.inputKey, this.maxLines});
  final String title;
  final TextInputType? inputKey;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            height: 1.56,
          ),
          textHeightBehavior:
              const TextHeightBehavior(applyHeightToFirstAscent: false),
        ),
        CustomInputText(
          inputType: inputKey,
          maxLine: maxLines,
        ),
      ],
    );
  }
}
