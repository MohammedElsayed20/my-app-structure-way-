import 'package:ecommerce/view/screens/auth/success_signup_screen.dart';
import 'package:flutter/Material.dart';
//import 'package:get/get.dart';

abstract class VerifyCodeSignUpProvider {
  checkCode();
  goToSuccessSignUp(BuildContext context);
}

class VerifyCodeSignUpProviderImp extends ChangeNotifier
    implements VerifyCodeSignUpProvider {
  late String verifycode;

  @override
  checkCode() {
    throw UnimplementedError();
  }

  @override
  goToSuccessSignUp(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(SuccessSignUp.screenRoute);
    //Get.offNamed(VerfiyCodeSignUp.screenRoute);
  }
}
