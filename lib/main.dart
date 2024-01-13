import "Package:flutter/material.dart";
//import "package:ecommerce/view/screens/language_screen.dart";
import "package:ecommerce/view/screens/screen_routes.dart";
import "package:get/get.dart";
import "package:provider/provider.dart";
import "package:shared_preferences/shared_preferences.dart";

import "core/localization/changelocal.dart";
import "core/localization/translation.dart";
import "core/services/services.dart";
import "provider/provider_injection.dart";
import "view/screens/auth/login_screen.dart";
import "view/screens/language_screen.dart";

//import "view/screens/onbording_screen.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  //To immediately disable the start page selection
  pageSelector = await pageSelectorFunc();
  runApp(const MyApp());
}

//part of the system for determinig the start page---------------
bool? pageSelector = false;

Future<bool?> pageSelectorFunc() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  print(prefs.getBool("isLastPage"));

  return prefs.getBool("isLastPage");
}

//--------------------------------------------------------------end
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //اوبجيكت من ملف changelocal
    LocaleController controller = Get.put(LocaleController());
    //لتفعيل سطر اللغه
    // locale : controller.language,
    return MultiProvider(
      providers: providersIngector,
      child: GetMaterialApp(
        //تفعيل اللغه و الترجمه
        locale: controller.language,
        translations: MyTranslation(),

        title: "E-Commerce App",
        debugShowCheckedModeBanner: false,
        theme: controller.appTheme,
        //this line related with pageSelector Method on onBordingProvider
        //home:pageSelector == true ? const LoginScreen() : const LanguageScreen(),
        // home: const Test(),
        initialRoute: pageSelector == true
            ? LoginScreen.screenRoute
            : LanguageScreen.screenRoute,
        routes: ScreenRoutes.routes,
      ),
    );
  }
}
