import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTextSignUpOrSignInWidget extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final void Function() onTap;

  const CustomTextSignUpOrSignInWidget({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne),
        InkWell(
          onTap: onTap,
          child: Text(textTwo,
              style: const TextStyle(
                  color: AppColor.primaryColor, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
