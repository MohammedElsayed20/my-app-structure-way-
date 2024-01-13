import "Package:flutter/material.dart";
import 'package:get/get.dart';

import '../../view/screens/auth/forget_password/verifycodesignup.dart';
import '../../view/screens/auth/login_screen.dart';

abstract class SignUpProvider {
  signUp(BuildContext context);
  goToSignIn();
}

class SignUpProviderImp extends ChangeNotifier implements SignUpProvider {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  bool isShowPassword = true;
  //key that related to the form wedget at screen
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  SignUpProviderImp() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
  }

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;

    notifyListeners();
  }

  //has been replaced with TextFormFeild state full widget class
  // textFieldClear() {
  //   if (email.text.isNotEmpty ||
  //       password.text.isNotEmpty ||
  //       username.text.isNotEmpty ||
  //       password.text.isNotEmpty) {
  //     email.clear();
  //     password.clear();
  //     username.clear();
  //     phone.clear();
  //   }
  // }

  @override
  signUp(BuildContext context) {
    //Get.offNamed(CheckEmailScreen.screenRoute);
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
      Navigator.of(context).pushReplacementNamed(VerfiyCodeSignUp.screenRoute);
      //textFieldClear();
      //Get.delete<SignUpProviderImp>();
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(LoginScreen.screenRoute);
    //Navigator.of(context).pushNamed(LoginScreen.screenRoute);
  }
}
