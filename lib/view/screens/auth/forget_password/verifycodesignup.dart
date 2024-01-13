import "package:ecommerce/provider/auth/verfiycodesignup_provider.dart";
import "package:ecommerce/view/widgets/auth/text_title_auth.dart";
import "package:flutter_otp_text_field/flutter_otp_text_field.dart";
import "package:provider/provider.dart";

import "../../../../core/constant/color.dart";
import "../../../widgets/auth/text_body_auth.dart";
import "Package:flutter/material.dart";

class VerfiyCodeSignUp extends StatelessWidget {
  static const String screenRoute = "/openVerfiyCodeSignUp";

  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<VerifyCodeSignUpProviderImp>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuthWidget(text: "Check code"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              textBody: "Please Enter The Digit Code Sent To lamoo@gmail.com"),
          const SizedBox(height: 15),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //لون واضح لحقول النص
            enabledBorderColor: Colors.black.withOpacity(0.4),
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              provider.goToSuccessSignUp(context);
            }, // end onSubmit
          ),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
