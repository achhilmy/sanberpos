part of '../controller.dart';

class UserController extends GetxController {
  RxList<User> userList = <User>[].obs;
  final UserService _userService = UserService();

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final List<User> users = await _userService.fetchUsers();
      userList.value = users;
    } catch (e) {
      print(e.toString());
      // Handle error state or show error message
    }
  }
}
