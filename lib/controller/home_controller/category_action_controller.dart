part of '../controller.dart';

class CategoryActionController extends GetxController {
  late TextEditingController categoryController;

  @override
  void onInit() async {
    super.onInit();
    categoryController = TextEditingController();
  }

  @override
  void onClose() {
    categoryController.dispose();

    super.onClose();
  }
}
