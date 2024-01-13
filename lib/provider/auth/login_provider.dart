import 'package:ecommerce/view/screens/auth/forget_password/forget_password_screen.dart';
import 'package:flutter/material.dart';

import '../../view/screens/auth/signup_screen.dart';

abstract class LoginProvider {
  login();
  goToSignUp(BuildContext context);
  goToForgetPassword(BuildContext context);
}

class LoginProviderImp extends ChangeNotifier implements LoginProvider {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  bool isShowPassword = true;

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  LoginProviderImp() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
  }

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;

    notifyListeners();
  }

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp(BuildContext context) {
    Navigator.of(context).pushNamed(SignUp.screenRoute);
  }

  @override
  goToForgetPassword(BuildContext context) {
    Navigator.of(context).pushNamed(ForgetPasswordScreen.screenRoute);
    //Get.offNamed(ForgetPasswordScreen.screenRoute);
  }
}
