import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/core/space_widget.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(logo),
          const VerticalSpace(value: 5),
          Text(
            'Fruit Market',
            style: GoogleFonts.poppins(
              fontSize: 51,
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const VerticalSpace(value: 10),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SecondaryButton(
                    onTap: () {},
                    image: 'assets/images/facebook.png',
                    title: 'Log In with',
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SecondaryButton(
                    onTap: () {},
                    image: 'assets/images/google.png',
                    title: 'Log In with',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
