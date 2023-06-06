import 'package:get/get.dart';
import 'package:sanber_pos/controller/controller.dart';

class HomesBindings implements BindingsInterface {
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(() => CategoryController());
    Get.lazyPut<CategoryActionController>(() => CategoryActionController());
    Get.lazyPut<ButtonController>(() => ButtonController());
  }
}
