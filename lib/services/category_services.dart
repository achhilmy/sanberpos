part of 'services.dart';

class CategoryServices {
  Future<List<CategoryListModel>> getList() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('user-token') ?? '';
      Response response = await DioHttp.request.get('/api/categories',
          options: Options(headers: {"Authorization": "Bearer $token"}));
      print(response);
      final List<dynamic> jsonData = json.decode(response.data);
      return jsonData
          .map((userJson) =>
              CategoryListModel.fromJson(userJson as Map<String, dynamic>))
          .toList();
    } catch (err) {
      throw err;
    }
  }

  static Future<Either<String, List<CategoryModel>>> categoryList(
      {String? email, String? password}) async {
    final categroyList = await DioHttp.getReq(url: API_CATEGORY.categoryList);
    // log(categroyList.toString());
    return categroyList.fold(
      (l) {
        return Left(l);
      },
      (r) {
        final List<CategoryModel> posts =
            (r as List).map((json) => CategoryModel.fromJson(json)).toList();
        return Right(posts);
      },
    );
  }

  Future<Either<String, List<CategoryModel>>> fetchData() async {
    try {
      // final response = await _apiService.fetchData();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('user-token') ?? '';
      Response response = await DioHttp.request.get('/api/categories',
          options: Options(headers: {"Authorization": "Bearer $token"}));
      if (response.data is List) {
        final List<CategoryModel> posts = (response.data as List)
            .map((json) => CategoryModel.fromJson(json))
            .toList();
        return Right(posts);
      } else {
        return Left('Invalid response data');
      }
    } catch (e) {
      return Left('Failed to fetch data');
    }
  }
}
