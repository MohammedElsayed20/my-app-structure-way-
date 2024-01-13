import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/functions/validinput.dart';
import '../../../../provider/auth/reset_password_provider.dart';
import '../../../widgets/auth/custom_button_auth.dart';
import '../../../widgets/auth/text_body_auth.dart';
import '../../../widgets/auth/text_form_field_auth.dart';
import '../../../widgets/auth/text_title_auth.dart';

class ResetPasswordScreen extends StatelessWidget {
  static const String screenRoute = "/openRestPassword";
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ResetPasswordControllerImp controller =
    //     Get.put(ResetPasswordControllerImp());
    var provider = Provider.of<ResetPasswordImp>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Reset Password',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColor.grey)),
      ),
      body: Form(
        key: provider.formState,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuthWidget(text: "New Password"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(textBody: "Please Enter New Password"),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              obscureText: provider.isShowPassword,
              onTapIcon: () => provider.showPassword(),
              isNumber: false,
              valid: (val) {
                return validInput(val!, 5, 100, "email");
              },
              //ملحوظه وضع نفس الكنترولر يتسبب بالكتابه نفسها فى اكل الحقول التى تحوى نفس الكنترولر
              mycontroller: provider.password,
              hinttext: 'Enter Your Password',
              iconData: Icons.lock_outlined,
              labeltext: "Password",
              //mycontroller: ,
            ),
            CustomTextFormAuth(
              obscureText: provider.isShowPassword,
              onTapIcon: () => provider.showPassword(),
              isNumber: false,
              valid: (val) {
                return validInput(val!, 5, 100, "password");
              },
              mycontroller: provider.rePassword,
              hinttext: 'Re Enter Your Password',
              iconData: Icons.lock_outlined,
              labeltext: "Password",
              //mycontroller: ,
            ),
            CustomButtonAuth(
                text: "Save",
                onPressed: () {
                  provider.goToSuccessResetPassword(context);
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}
