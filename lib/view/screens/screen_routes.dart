import 'package:ecommerce/view/screens/auth/forget_password/forget_password_screen.dart';
import 'package:ecommerce/view/screens/auth/forget_password/reset_password_screen.dart';
import 'package:ecommerce/view/screens/auth/forget_password/verifycodesignup.dart';
import 'package:ecommerce/view/screens/auth/signup_screen.dart';
import 'package:ecommerce/view/screens/auth/forget_password/success_reset_password.dart';
import 'package:ecommerce/view/screens/auth/success_signup_screen.dart';
import 'package:ecommerce/view/screens/auth/forget_password/verify_code_screen.dart';
import 'package:ecommerce/view/screens/language_screen.dart';
import 'package:flutter/Material.dart';
import '/view/screens/auth/login_screen.dart';
import 'auth/check_email_screen.dart';
import 'onbording_screen.dart';

class ScreenRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    // "/": (context) => const LanguageScreen(),
    LanguageScreen.screenRoute: (context) => const LanguageScreen(),
    //onBording
    OnBordingScreen.screenRoute: (context) => const OnBordingScreen(),
    //Auth
    LoginScreen.screenRoute: (context) => const LoginScreen(),
    SignUp.screenRoute: (context) => const SignUp(),
    ForgetPasswordScreen.screenRoute: (context) => const ForgetPasswordScreen(),
    VerfiyCodeScreen.screenRoute: (context) => const VerfiyCodeScreen(),
    ResetPasswordScreen.screenRoute: (context) => const ResetPasswordScreen(),
    CheckEmailScreen.screenRoute: (context) => const CheckEmailScreen(),
    SuccessResetPassword.screenRoute: (context) => const SuccessResetPassword(),
    SuccessSignUp.screenRoute: (context) => const SuccessSignUp(),
    VerfiyCodeSignUp.screenRoute: (context) => const VerfiyCodeSignUp(),
  };
}
