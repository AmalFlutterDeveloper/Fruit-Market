import 'package:flutter/material.dart';
import 'package:fruit_market/features/onboarding_veiw/presentation/widget/item_page_view.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        ItemPageView(
          image: 'assets/images/Group1.png',
          title: 'E Shopping',
          subtitle: 'Explore  top organic fruits & grab them',
        ),
        ItemPageView(
          image: 'assets/images/Scroll Group 2.png',
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
        ),
        ItemPageView(
          image: 'assets/images/Scroll Group 3.png',
          title: 'Delivery Arrived',
          subtitle: 'Order is arrived at your Place',
        )
      ],
    );
  }
}
