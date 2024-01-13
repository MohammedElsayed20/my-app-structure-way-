import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/data/data_source/remote/test_data.dart';
import 'package:flutter/material.dart';
import '../core/class/crud.dart';

class TestProvider extends ChangeNotifier {
  TestProvider() {
    getData();
  }

  //Crud crud = Crud();

  TestData testData = TestData(Crud());

  List data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = testData.getData();
    if (StatusRequest.success == statusRequest) {
      data.addAll(response["data"]);
    }
    notifyListeners();
  }
}
