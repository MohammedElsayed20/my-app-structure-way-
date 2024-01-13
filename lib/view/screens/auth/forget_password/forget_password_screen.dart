import 'package:ecommerce/view/widgets/auth/logo_auth.dart';
import 'package:ecommerce/view/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/functions/validinput.dart';
import '../../../../provider/auth/forget_password_provider.dart';
import '../../../widgets/auth/custom_button_auth.dart';
import '../../../widgets/auth/text_body_auth.dart';
import '../../../widgets/auth/text_title_auth.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String screenRoute = "/OpenForgetPassword";

  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var forgetPasswordProvider = Provider.of<ForgetPasswordImp>(context);
    //var loginProvider = Provider.of<LoginProviderImp>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Forget Password',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Form(
        key: forgetPasswordProvider.formState,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              const LogoAuth(),
              const SizedBox(height: 20),
              const CustomTextTitleAuthWidget(text: "Check Email"),
              const SizedBox(height: 10),
              const CustomTextBodyAuth(
                textBody:
                    "please Enter Your Email Address To Recive A verification code",
              ),
              const SizedBox(height: 50),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 5, 100, "email");
                },
                mycontroller: forgetPasswordProvider.email,
                hinttext: 'Enter Your Email',
                iconData: Icons.email_outlined,
                labeltext: "Email",
                //mycontroller: ,
              ),
              //const SizedBox(height: 10),
              CustomButtonAuth(
                  text: "Check",
                  onPressed: () {
                    forgetPasswordProvider.goToVerifyCode(context);
                  }),
              //const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
