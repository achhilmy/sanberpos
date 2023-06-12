part of 'services.dart';

class ProductServices {
  Future<Either<String, List<ProductModel>>> fetchData() async {
    try {
      // final response = await _apiService.fetchData();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('user-token') ?? '';
      Response response = await DioHttp.request.get('/api/products',
          options: Options(headers: {"Authorization": "Bearer $token"}));
      if (response.data is List) {
        final List<ProductModel> posts = (response.data as List)
            .map((json) => ProductModel.fromJson(json))
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
