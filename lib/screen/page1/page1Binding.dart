import 'package:get/get.dart';
import 'page1controller.dart';

class Page1Binding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<Page1controller>(() => Page1controller());
  }
}
