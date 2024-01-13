import 'package:ecommerce/view/screens/auth/login_screen.dart';
import 'package:flutter/Material.dart';

abstract class SuccessSignUpProvider {
  goToPageLogin(BuildContext context);
}

class SuccessSignUpProviderImp extends ChangeNotifier
    implements SuccessSignUpProvider {
  @override
  goToPageLogin(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(LoginScreen.screenRoute, (route) => false);
    //Get.offAllNamed(LoginScreen.screenRoute);
  }
}
