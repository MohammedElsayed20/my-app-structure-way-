import 'package:ecommerce/provider/auth/successsignup_provider.dart';
import 'package:flutter/Material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../core/constant/color.dart';
import '../../widgets/auth/custom_button_auth.dart';

class SuccessSignUp extends StatelessWidget {
  static const String screenRoute = "/openSucessSignUp";
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SuccessSignUpProviderImp>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('32'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.primaryColor,
          )),
          Text("37".tr,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 30)),
          Text("38".tr),
          const Spacer(),
          //SizedBox(height: 300),
          SizedBox(
            width: double.infinity,
            child: CustomButtonAuth(
                text: "31".tr,
                onPressed: () {
                  provider.goToPageLogin(context);
                }),
          ),
          const SizedBox(height: 100)
        ]),
      ),
    );
  }
}
