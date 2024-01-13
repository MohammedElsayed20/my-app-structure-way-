import 'package:ecommerce/view/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constant/color.dart';
import '../../../core/functions/validinput.dart';
import '../../../provider/auth/signup_provider.dart';
import '../../widgets/auth/custom_button_auth.dart';
import '../../widgets/auth/text_body_auth.dart';
import '../../widgets/auth/text_signup.dart';
import '../../widgets/auth/text_title_auth.dart';

class SignUp extends StatelessWidget {
  static const String screenRoute = "/OpenSignUpScreen";

  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SignUpProviderImp>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Form(
        key: provider.formState,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Consumer<SignUpProviderImp>(
            builder: (context, signUpProvider, child) => ListView(
              children: [
                //const SizedBox(height: 20),
                // const LogoAuth(),
                const SizedBox(height: 20),
                const CustomTextTitleAuthWidget(text: "Welcome Back"),
                const SizedBox(height: 10),
                const CustomTextBodyAuth(
                  textBody:
                      "Sign Up With Your Email And Password OR Continue With Social Media",
                ),
                const SizedBox(height: 50),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "username");
                  },
                  mycontroller: signUpProvider.username,
                  hinttext: 'Enter Your Username',
                  iconData: Icons.person_2_outlined,
                  labeltext: "Username",
                  //mycontroller: ,
                ),

                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "email");
                  },
                  mycontroller: signUpProvider.email,
                  hinttext: 'Enter Your Email',
                  iconData: Icons.email_outlined,
                  labeltext: "Email",
                  //mycontroller: ,
                ),
                //const SizedBox(height: 10),
                CustomTextFormAuth(
                  isNumber: true,
                  valid: (val) {
                    return validInput(val!, 5, 100, "phone");
                  },
                  mycontroller: signUpProvider.phone,
                  hinttext: 'Enter Your Phone Number',
                  iconData: Icons.phone_android_outlined,
                  labeltext: "Phone",
                  //mycontroller: ,
                ),
                CustomTextFormAuth(
                  obscureText: provider.isShowPassword,
                  onTapIcon: () => provider.showPassword(),
                  isNumber: true,
                  valid: (val) {
                    return validInput(val!, 5, 100, "password");
                  },
                  //obscureText: true,
                  mycontroller: signUpProvider.password,
                  hinttext: 'Enter Your Password',
                  iconData: Icons.lock_outlined,
                  labeltext: "Password",
                  //mycontroller: ,
                ),

                CustomButtonAuth(
                    text: "Sign Up",
                    onPressed: () {
                      signUpProvider.signUp(context);
                    }),
                const SizedBox(height: 50),
                Consumer<SignUpProviderImp>(
                  builder: (context, loginProvider, child) {
                    return CustomTextSignUpOrSignInWidget(
                      textOne: "have an account : ",
                      textTwo: "  SignIn",
                      onTap: () {
                        //عدل هنا بعد الصلاة
                        context.read<SignUpProviderImp>().goToSignIn();
                      },
                    );
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
