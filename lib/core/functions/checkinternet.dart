import 'dart:io';

//الدالة الخاصة ب التحقق اذا ما كان هناك اتصال ب الإنترنت ام لا
checkInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
    //on : هنا يكتب بعدها الخطأ المحتمل
  } on SocketException catch (_) {
    return false;
  }
}
