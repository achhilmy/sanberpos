part of 'services.dart';

class AuthServices {
  Future<Either<String, SignInModel>> signIn(
      {String? email, String? password}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      Response loginResponse = await DioHttp.request.post("/api/auth/login",
          data: {'email': email, 'password': password});

      final r = loginResponse.data;
      prefs.setString('user-token', r['data']["token"]);
      return Right(SignInModel.fromJson(r));
    } catch (e) {
      return Left('Failed to fetch data ${e}');
    }
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
