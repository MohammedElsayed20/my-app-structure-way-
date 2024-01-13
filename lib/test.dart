import "Package:flutter/material.dart";
import "package:ecommerce/core/functions/checkinternet.dart";
import "package:flutter_otp_text_field/flutter_otp_text_field.dart";

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  dynamic res;

  initalData() async {
    res = await checkInternet();
    print("internet Connection $res");
  }

  @override
  void initState() {
    initalData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Test Packages"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            OtpTextField(
              borderRadius: BorderRadius.circular(20),
              fieldWidth: 50,
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
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
