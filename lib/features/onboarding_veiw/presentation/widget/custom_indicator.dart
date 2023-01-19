import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, required this.pageIndex});
  final double? pageIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: pageIndex ?? 0,
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(color: primaryColor),
        ),
      ),
    );
  }
}
