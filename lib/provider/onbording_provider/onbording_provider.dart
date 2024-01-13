import 'package:ecommerce/view/screens/auth/login_screen.dart';
import 'package:flutter/Material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/data_source/static/onbording_data.dart';

abstract class OnbordingProvider {
  nextPage(BuildContext context);
  onPageChanged(int index);
}

class OnbordingProviderImp extends ChangeNotifier implements OnbordingProvider {
  int currentPage = 0;
  late bool isLastPage;
  //المتغير الخاص بتغير الصفحات عن طريق الزر الخاص ب قطعة البيج فيو
  late PageController pageController;

  OnbordingProviderImp() {
    //انشاء اوبجكت خاص بتغير الصفحات فى الكونستراكتور
    pageController = PageController();
  }

  pageSelector() async {
    if (currentPage > onbordingData.length - 1) {
      isLastPage = true;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool("isLastPage", true);
      print("isLastPage $isLastPage");
    }
  }

  @override
  nextPage(BuildContext context) {
    currentPage++;
    if (currentPage > onbordingData.length - 1) {
      Navigator.of(context).pushReplacementNamed(LoginScreen.screenRoute);
      print("Last Page $currentPage");
      //تفعيل الداله المسؤوله عن اختيار صفحة البدء
      pageSelector();
    } else {
      //انيميشن الحركه البطيئه لقطعة البيج فيو
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int i) {
    currentPage = i;

    notifyListeners();
  }

  void onInit() {}
}
