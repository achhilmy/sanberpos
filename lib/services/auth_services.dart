part of 'services.dart';

class AuthServices {
  static Future<Either<String, SignInModel>> signIn(
      {String? email, String? password}) async {
    final loginResponse = await DioHttp.postReq(
        url: API_CLIENT.loginClient,
        body: {'email': email, 'password': password});
    log('isinya apa : ${loginResponse}');
    return loginResponse.fold(
      (l) {
        return Left(l);
      },
      (r) async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('user-token', r['data']["token"]);
        return Right(SignInModel.fromJson(r));
      },
    );
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
