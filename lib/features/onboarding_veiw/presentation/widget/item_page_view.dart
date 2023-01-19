// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fruit_market/core/space_widget.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemPageView extends StatelessWidget {
  const ItemPageView({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 18),
        SizedBox(
          height: SizeConfig.defaultSize! * 25,
          child: Image.asset(image),
        ),
        const VerticalSpace(value: 2.5),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const VerticalSpace(value: 1),
        Text(
          subtitle,
          style: GoogleFonts.poppins(
              fontSize: 15,
              color: const Color(0xff78787C),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
