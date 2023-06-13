part of 'services.dart';

class CategoryServices {
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

  Future<Either<String, AddCategoryModel>> addCategory({String? name}) async {
    try {
      // final response = await _apiService.fetchData();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('user-token') ?? '';
      Response response = await DioHttp.request.post('/api/categories',
          data: {"name": "${name}"},
          options: Options(headers: {"Authorization": "Bearer $token"}));
      log(response.statusCode.toString());

      final parsedJson = AddCategoryModel.fromJson(response.data);
      return Right(parsedJson);
    } catch (e) {
      return Left('Failed to fetch data ${e}');
    }
  }

  Future<Either<String, bool>> deleteCategory({String? id}) async {
    print("isi id nya berapa" + id.toString());
    try {
      // final response = await _apiService.fetchData();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('user-token') ?? '';
      Response response = await DioHttp.request.delete('/api/categories/$id',
          options: Options(headers: {"Authorization": "Bearer $token"}));
      log("berapa responsnya :" + response.statusCode.toString());
      const parsedJson = true;
      return const Right(parsedJson);
    } catch (e) {
      return Left('Failed to fetch data ${e}');
    }
  }
}
