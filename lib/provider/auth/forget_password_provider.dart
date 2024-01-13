import '../../view/screens/auth/forget_password/verify_code_screen.dart';
import "Package:flutter/material.dart";
//import "package:get/get.dart";

abstract class ForgetPasswordProvider {
  checkEmail();
  goToVerifyCode(BuildContext context);
}

class ForgetPasswordImp extends ChangeNotifier
    implements ForgetPasswordProvider {
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  ForgetPasswordImp() {
    //create objects
    email = TextEditingController();
  }

  @override
  goToVerifyCode(BuildContext context) {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
    //Get.offNamed(VerfiyCodeScreen.screenRoute, arguments: {});
    Navigator.of(context).pushNamed(VerfiyCodeScreen.screenRoute);
  }

  @override
  checkEmail() {}
}
