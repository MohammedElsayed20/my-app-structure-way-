import 'package:ecommerce/provider/auth/checkemail_provider.dart';
import 'package:flutter/Material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../core/constant/color.dart';
import '../../../core/functions/validinput.dart';
import '../../widgets/auth/custom_button_auth.dart';
import '../../widgets/auth/text_body_auth.dart';
import '../../widgets/auth/text_form_field_auth.dart';
import '../../widgets/auth/text_title_auth.dart';

class CheckEmailScreen extends StatelessWidget {
  static const String screenRoute = "/openCheckEmail";
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    var provider = Provider.of<CheckEmailProviderImp>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('27'.tr,
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
            CustomTextTitleAuthWidget(text: "28".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(textBody: "29".tr),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val) {
                return validInput(val!, 5, 100, "email");
              },
              mycontroller: provider.email,
              hinttext: "12".tr,
              iconData: Icons.email_outlined,
              labeltext: "18".tr,
            ),
            CustomButtonAuth(
                text: "30".tr,
                onPressed: () {
                  //controller.goToSuccessSignUp();
                  provider.goToVerifyCode(context);
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}
