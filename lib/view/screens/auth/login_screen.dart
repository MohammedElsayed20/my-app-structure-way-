import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/provider/auth/login_provider.dart';
import 'package:ecommerce/view/widgets/auth/logo_auth.dart';
import 'package:ecommerce/view/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constant/color.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../widgets/auth/custom_button_auth.dart';
import '../../widgets/auth/text_body_auth.dart';
import '../../widgets/auth/text_signup.dart';
import '../../widgets/auth/text_title_auth.dart';

class LoginScreen extends StatelessWidget {
  static const String screenRoute = "/OpenLoginScreen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LoginProviderImp>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
        onWillPop: () => alertExitApp(),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Form(
            key: provider.formState,
            child: ListView(
              children: [
                const SizedBox(height: 20),
                const LogoAuth(),
                const SizedBox(height: 20),
                const CustomTextTitleAuthWidget(text: "Welcome Back"),
                const SizedBox(height: 10),
                const CustomTextBodyAuth(
                  textBody:
                      "Sign In With Your Email And Password OR Continue With Social Media",
                ),
                const SizedBox(height: 50),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "email");
                  },
                  mycontroller: provider.email,
                  hinttext: 'Enter Your Email',
                  iconData: Icons.email_outlined,
                  labeltext: "Email",
                  //mycontroller: ,
                ),
                //const SizedBox(height: 10),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    //تم وضع المه التعجب لاسباب تعلق بالنل سيفتى لان نوع المتغير بعلامة استفهام val?
                    return validInput(val!, 5, 30, "password");
                  },
                  mycontroller: provider.password,
                  obscureText: provider.isShowPassword,
                  onTapIcon: () => provider.showPassword(),
                  hinttext: 'Enter Your Password',
                  iconData: Icons.lock_outlined,
                  labeltext: "Password",
                  //mycontroller: ,
                ),
                //--------------------------------forget Password
                Consumer<LoginProviderImp>(
                  builder: (context, forgetPasswordProvider, child) {
                    return InkWell(
                      onTap: () =>
                          forgetPasswordProvider.goToForgetPassword(context),
                      child: const Text(
                        "Forget Password",
                        textAlign: TextAlign.end,
                      ),
                    );
                  },
                ),
                Consumer<LoginProviderImp>(
                  builder: (context, provider, child) {
                    return CustomButtonAuth(
                      text: "Sign In",
                      onPressed: () {
                        provider.login();
                      },
                    );
                  },
                ),
                const SizedBox(height: 30),
                CustomTextSignUpOrSignInWidget(
                  textOne: "Do not have an account ? ",
                  textTwo: "     SignUp",
                  onTap: () {
                    context.read<LoginProviderImp>().goToSignUp(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
