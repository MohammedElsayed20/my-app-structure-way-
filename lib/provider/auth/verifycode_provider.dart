import "Package:flutter/material.dart";
import 'package:ecommerce/view/screens/auth/forget_password/reset_password_screen.dart';
//import "package:get/get.dart";

abstract class VerifyCodeProvider {
  checkCode();
  goToResetPassword(BuildContext context);
}

class VerifyCodeImp extends ChangeNotifier implements VerifyCodeProvider {
  late String veridyCode;

  VerifyCodeImp();

  @override
  goToResetPassword(BuildContext context) {
    //Get.offNamed(VerfiyCodeScreen.screenRoute, arguments: {});
    Navigator.of(context).pushNamed(ResetPasswordScreen.screenRoute);
  }

  @override
  checkCode() {
    // TODO: implement checkEmail
    throw UnimplementedError();
  }
}
