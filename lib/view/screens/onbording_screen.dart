import 'package:ecommerce/provider/onbording_provider/onbording_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/onbording/page_view_slider.dart';
import "Package:flutter/material.dart";
import 'package:ecommerce/view/widgets/onbording/dot_controller.dart';
import 'package:ecommerce/view/widgets/onbording/custom_button.dart';

OnbordingProviderImp c = OnbordingProviderImp();

class OnBordingScreen extends StatelessWidget {
  static const String screenRoute = "/openOnBordingScreen";

  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<OnbordingProviderImp>(
        builder: (context, onbordingController, child) => const SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                //يحتوى على تصميم الصفحه العلوى الرئيسى الثلاثى
                child: OnbordingSliderPageView(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    //تصميم النقاط
                    DotController(),
                    SizedBox(height: 50),
                    //تصميم الزر
                    CustomButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
