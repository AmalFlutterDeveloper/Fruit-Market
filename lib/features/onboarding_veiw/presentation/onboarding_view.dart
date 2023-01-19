import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/features/Auth/presentation/pages/login/login_view.dart';
import 'package:fruit_market/features/onboarding_veiw/presentation/widget/custom_indicator.dart';
import 'package:fruit_market/features/onboarding_veiw/presentation/widget/custom_page_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPageView(pageController: pageController),
          Positioned(
            bottom: SizeConfig.defaultSize! * 25,
            right: SizeConfig.defaultSize! * 0,
            left: SizeConfig.defaultSize! * 0,
            child: CustomIndicator(
                pageIndex:
                    pageController!.hasClients ? pageController!.page : 0),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Visibility(
              visible: pageController!.hasClients
                  ? (pageController?.page == 2 ? false : true)
                  : true,
              child: Text(
                'Skip',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff898989),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
                onTap: () {
                  if (pageController?.page == 2) {
                    Get.to(
                      () => const LoginView(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(milliseconds: 500),
                    );
                  } else {
                    pageController?.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  }
                },
                text: pageController!.hasClients
                    ? (pageController?.page == 2 ? 'Get started' : 'Next')
                    : 'Next'),
          )
        ],
      ),
    );
  }
}
