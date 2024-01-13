import 'package:ecommerce/provider/auth/verifycode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:provider/provider.dart';

import '../../../../core/constant/color.dart';
import '../../../widgets/auth/text_body_auth.dart';
import '../../../widgets/auth/text_title_auth.dart';

class VerfiyCodeScreen extends StatelessWidget {
  static const String screenRoute = "/openVerifyCode";
  const VerfiyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ForgetPasswordControllerImp controller =
    //     Get.put(ForgetPasswordControllerImp());
    var provider = Provider.of<VerifyCodeImp>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuthWidget(text: "Check code"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              textBody:
                  "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          OtpTextField(
            borderRadius: BorderRadius.circular(20),
            fieldWidth: 50,
            //لون واضح لحقول النص
            enabledBorderColor: Colors.black.withOpacity(0.4),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              provider.goToResetPassword(context);
            }, // end onSubmit
          ),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
