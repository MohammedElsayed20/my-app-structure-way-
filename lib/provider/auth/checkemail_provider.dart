import 'package:ecommerce/view/screens/auth/forget_password/verifycodesignup.dart';
import 'package:flutter/cupertino.dart';
//import 'package:get/get.dart';
import "package:flutter/material.dart";

abstract class CheckEmailProvider {
  checkemail();
  goToVerifyCode(BuildContext context);
}

class CheckEmailProviderImp extends ChangeNotifier
    implements CheckEmailProvider {
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  CheckEmailProviderImp() {
    email = TextEditingController();
  }

  @override
  checkemail() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  goToVerifyCode(BuildContext context) {
    //Get.offNamed(SuccessSignUp.screenRoute);
    Navigator.of(context).pushReplacementNamed(VerfiyCodeSignUp.screenRoute);
  }

  // @override
  // void onInit() {
  //   email = TextEditingController();
  //   super.onInit();
  // }

  // @override
  // void dispose() {
  //   email.dispose();
  //   super.dispose();
  // }
}
