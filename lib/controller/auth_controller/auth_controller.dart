part of '../controller.dart';

class AuthController extends GetxController {
  final signInStatus = <SignInModel>[].obs;
  AuthServices authServices = AuthServices();
  final statusAuth = true.obs;

  var isAuth = false.obs;
  RxBool isLoading = false.obs;
  RxBool isLoadingReg = false.obs;
  login(String? email, String? password) async {
    try {
      isLoading(true);
      final resLogin =
          await AuthServices.signIn(email: email, password: password);
      isLoading(false);
      log(resLogin.toString());
      if (resLogin != null) {
        Get.snackbar("Sucess", "Success Login");
        Get.offAllNamed(RouteName.mainPages);
      } else {
        Get.snackbar("Error", "invalid userame and password");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void registerTest(
    String? email,
    String? fullname,
    String? phone,
    String? password,
  ) async {
    try {
      //  if (email != '' && password != '') {
      isLoadingReg(true);
      var register = await AuthServices.register(
        email: email,
        fullname: fullname,
        phone: phone,
        password: password,
      );

      log("isi response auth: $register");
      isLoadingReg(false);
      if (register != null) {
        Get.toNamed(RouteName.loginPages);
        Get.snackbar("Berhasil", "Data berhasil di simpan");
      }
      Get.snackbar("Error", "Gagal Menyimpan data");

      // }
    } on DioError catch (dioError) {
      var message = "";
      switch (dioError.response!.statusCode) {
        case 400:
          Map<String, dynamic> errorData = dioError.response!.data['errors'];
          var getListMessage = errorData.values;
          var result = getListMessage.map((item) =>
              item.toString().substring(1, item.toString().length - 2));
          message = result.join("\n");
          Get.snackbar("Error", message);
          break;
        case 404:
          message = "Server Not Found";
          Get.snackbar("Error", message);
          break;
        default:
          message = "Server Error";
          Get.snackbar("Error", message);
      }
    } catch (e) {
      print(e);
    }
  }
}
