import 'package:get/get.dart';
import 'page2contorller.dart';

class Page2Binding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<Page2controller>(() => Page2controller());
    Get.put<Page2controller>(Page2controller());
  }
}
