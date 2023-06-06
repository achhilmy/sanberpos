part of '../controller.dart';

class ButtonController extends GetxController {
  Rx<Color> containerColor = Colors.blue.obs;
  Rx<bool> isValid = false.obs;

  void changeColor(String value) {
    if (value.isNotEmpty) {
      isValid.value = true;
    } else {
      isValid.value = false;
    }
  }
}
