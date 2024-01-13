import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String textBody;

  const CustomTextBodyAuth({
    super.key,
    required this.textBody,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 19),
      child: Text(
        textBody,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
