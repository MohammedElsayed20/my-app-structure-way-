import 'package:ecommerce/provider/auth/checkemail_provider.dart';
import 'package:ecommerce/provider/test_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'auth/forget_password_provider.dart';
import 'auth/login_provider.dart';
import 'auth/reset_password_provider.dart';
import 'auth/signup_provider.dart';
import 'auth/successsignup_provider.dart';
import 'auth/verfiycodesignup_provider.dart';
import 'auth/verifycode_provider.dart';
import 'onbording_provider/onbording_provider.dart';

List<SingleChildWidget> providersIngector = [
  ChangeNotifierProvider(create: (context) => TestProvider()),
  ChangeNotifierProvider(create: (context) => OnbordingProviderImp()),
  ChangeNotifierProvider(create: (context) => LoginProviderImp()),
  ChangeNotifierProvider(create: (context) => SignUpProviderImp()),
  ChangeNotifierProvider(create: (context) => ForgetPasswordImp()),
  ChangeNotifierProvider(create: (context) => VerifyCodeImp()),
  ChangeNotifierProvider(create: (context) => ResetPasswordImp()),
  ChangeNotifierProvider(create: (context) => CheckEmailProviderImp()),
  ChangeNotifierProvider(create: (context) => VerifyCodeSignUpProviderImp()),
  ChangeNotifierProvider(create: (context) => SuccessSignUpProviderImp()),
];
