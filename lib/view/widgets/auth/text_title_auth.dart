import 'package:flutter/material.dart';

class CustomTextTitleAuthWidget extends StatelessWidget {
  final String text;

  const CustomTextTitleAuthWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
