import 'package:ecommerce/view/screens/onbording_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_utils/get_utils.dart';
import '../../core/localization/changelocal.dart';
import '../widgets/language/custombuttomlang.dart';

class LanguageScreen extends GetView<LocaleController> {
  static const String screenRoute = "/openlangScreen";

  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1".tr,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.toNamed(OnBordingScreen.screenRoute);
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.offNamed(OnBordingScreen.screenRoute);
                  }),
            ],
          )),
    );
  }
}
