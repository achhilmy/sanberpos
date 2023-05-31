  part of '../controller.dart';

  class LoginController extends GetxController {
    late TextEditingController emailController;
    late TextEditingController passwordController;

    @override
    void onInit() async {
      super.onInit();
      emailController = TextEditingController();
      passwordController = TextEditingController();
    }

    @override
    void onClose() {
      emailController.dispose();
      passwordController.dispose();
      super.onClose();
    }
  }
