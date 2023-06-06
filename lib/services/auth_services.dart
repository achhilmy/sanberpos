part of 'services.dart';

class AuthServices {
  static Future<dynamic> signIn({String? email, String? password}) async {
    final loginResponse = await DioHttp.request.post("api/auth/login", data: {
      "email": email,
      "password": password,
    });
    log("ini data log login:${loginResponse.data}");
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user-token', loginResponse.data['data']["token"]);
    return loginResponse;
  }

  static Future<dynamic> register(
      {String? email,
      String? fullname,
      String? phone,
      String? password}) async {
    try {
      final registerResponse =
          await DioHttp.request.post("api/auth/register", data: {
        "email": email,
        "name": fullname,
        "password": phone,
        "password_confirmation": password
      });
      log("ini data log register:$registerResponse");

      if (registerResponse.statusCode == 200) {
        return registerResponse;
      }
      throw registerResponse;
    } catch (e) {
      return null;
    }
  }
}
