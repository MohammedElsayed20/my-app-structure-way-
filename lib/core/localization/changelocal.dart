import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/app_theme.dart';
import '../services/services.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = englishTheme;

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    // شرط قم بضبط اللغه حسب الاختيار
    appTheme = langcode == "ar" ? arabicTheme : englishTheme;
    Get.changeTheme(appTheme);
    //------------------------------
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      //لحفظ نوع اللغه التى قام المستخدم باختيارها وعدم ظهور اختيار اللغه مره اخرى
      appTheme = arabicTheme;
      //---------------------
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      //لحفظ نوع اللغه التى قام المستخدم باختيارها وعدم ظهور اختيار اللغه مره اخرى
      appTheme = englishTheme;
      //----------------------
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      //قيمه افتراضيه للغه فتح الابلكيشن
      appTheme = englishTheme;
      //---------------------
    }
    super.onInit();
  }
}
