import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void onInit() async {
    super.onInit();
    emailController = TextEditingController();
    nameController = TextEditingController();
    confirmPasswordController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
