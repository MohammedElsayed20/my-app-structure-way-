import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constant/color.dart';
import '../../../provider/onbording_provider/onbording_provider.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnbordingProviderImp>(
      builder: (context, onbordingController, child) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: 40,
          child: MaterialButton(
            onPressed: () {
              onbordingController.nextPage(context);
            },
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 4),
            color: AppColor.primaryColor,
            textColor: Colors.white,
            child: const Text("Continue"),
          ),
        );
      },
    );
  }
}
