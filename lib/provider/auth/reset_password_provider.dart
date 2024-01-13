import '../../view/screens/auth/forget_password/success_reset_password.dart';
import "Package:flutter/material.dart";
//import "package:get/get.dart";

abstract class ResetPasswordProvider {
  resetPassword();
  goToSuccessResetPassword(BuildContext context);
}

class ResetPasswordImp extends ChangeNotifier implements ResetPasswordProvider {
  late TextEditingController password;
  late TextEditingController rePassword;
  bool isShowPassword = true;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  ResetPasswordImp() {
    //create objects
    password = TextEditingController();
    rePassword = TextEditingController();
  }

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;

    notifyListeners();
  }

  @override
  goToSuccessResetPassword(BuildContext context) {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
    //Get.offNamed(VerfiyCodeScreen.screenRoute, arguments: {});
    Navigator.of(context).pushNamed(SuccessResetPassword.screenRoute);
  }

  @override
  resetPassword() {
    // TODO: implement checkEmail
    throw UnimplementedError();
  }
}
