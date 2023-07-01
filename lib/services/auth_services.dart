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

  Future<Either<String, RegisterModel>> register(
      {String? email,
      String? name,
      String? password,
      String? confirmPassword}) async {
    try {
      final registerResponse =
          await DioHttp.request.post("api/auth/register", data: {
        "email": email,
        "name": name,
        "password": password,
        "password_confirmation": confirmPassword
      });
      log("ini data log register:$registerResponse");

      return Right(RegisterModel.fromJson(registerResponse.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
