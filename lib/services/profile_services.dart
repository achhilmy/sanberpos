part of 'services.dart';

class ProfileServices {
  Future<Either<String, ProfileModel>> fetchData() async {
    try {
      // final response = await _apiService.fetchData();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('user-token') ?? '';
      final response = await DioHttp.request.get('/api/profile',
          options: Options(headers: {"Authorization": "Bearer $token"}));
      log(response.data.toString());
      final parsedJson = ProfileModel.fromJson(response.data);
      return Right(parsedJson);
      // return Right(ProfileModel.fromJson(response.data));
    } catch (e) {
      return Left('Failed to fetch data $e)');
    }
  }

  Future<Either<String, EditProfileModel>> editProfile(
      {String? fullName,
      String? address,
      String? photoUrl,
      String? phoneNumber}) async {
    try {
      // final response = await _apiService.fetchData();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('user-token') ?? '';
      final response = await DioHttp.request.patch('/api/profile',
          data: {
            "full_name": fullName,
            "address": address,
            "photo_url": photoUrl,
            "phone_numbers": phoneNumber
          },
          options: Options(headers: {"Authorization": "Bearer $token"}));
      log(response.data.toString());
      final parsedJson = EditProfileModel.fromJson(response.data);
      return Right(parsedJson);
      // return Right(ProfileModel.fromJson(response.data));
    } catch (e) {
      return Left('Failed to fetch data $e)');
    }
  }
}
