import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  late SharedPreferences prefInstance;

  /// Init shared preferences
  Future<void> init() async {
    prefInstance = await SharedPreferences.getInstance();
  }

  /// Get access token
  String? getAccessToken() {
    return prefInstance.getString('access_token');
  }
}
