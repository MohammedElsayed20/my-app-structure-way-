import 'package:ecommerce/linkapi.dart';
import '../../../core/class/crud.dart';

class TestData {
  late Crud crud;

  TestData(this.crud);

  getData() async {
    var response = await crud.postData(LinkApp.linkTest, {});

    // صممت للتعامل مع لغة دارت التفاضلية التى ممكن ان تعود شيئانfold هذه الدالة
    response.fold((l) => l, (r) => r);
  }
}
