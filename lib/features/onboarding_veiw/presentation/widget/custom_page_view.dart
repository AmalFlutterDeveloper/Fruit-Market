import 'package:flutter/material.dart';
import 'package:fruit_market/features/onboarding_veiw/presentation/widget/item_page_view.dart';

class customPageView extends StatelessWidget {
  const customPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
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
