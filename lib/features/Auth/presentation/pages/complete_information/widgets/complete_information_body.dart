import 'package:flutter/material.dart';
import 'package:fruit_market/core/space_widget.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/features/Auth/presentation/pages/complete_information/widgets/complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const VerticalSpace(value: 10),
          const CompleteInformationItem(
            title: 'Enter your name',
            inputKey: TextInputType.name,
          ),
          const VerticalSpace(value: 2),
          const CompleteInformationItem(
            title: 'Enter your phoneNumber',
            inputKey: TextInputType.phone,
          ),
          const VerticalSpace(value: 2),
          const CompleteInformationItem(
            title: 'Add your address',
            maxLines: 5,
          ),
          const VerticalSpace(value: 10),
          CustomGeneralButton(text: 'login', onTap: () {})
        ],
      ),
    );
  }
}
