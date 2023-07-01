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

  Future<Either<String, bool>> deleteProduct({String? id}) async {
    print("isi id nya berapa" + id.toString());
    try {
      // final response = await _apiService.fetchData();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('user-token') ?? '';
      Response response = await DioHttp.request.delete('/api/products/$id',
          options: Options(headers: {"Authorization": "Bearer $token"}));
      log("berapa responsnya :" + response.statusCode.toString());
      const parsedJson = true;
      return const Right(parsedJson);
    } catch (e) {
      return Left('Failed to fetch data ${e}');
    }
  }

  Future<Either<String, ProductModel>> addProduct(
      {String? name,
      String? description,
      price,
      stock,
      String? sku,
      categroyId,
      image}) async {
    try {
      // final response = await _apiService.fetchData();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('user-token') ?? '';
      final response = await DioHttp.request.post('/api/products',
          data: {
            "name": "product44",
            "description": "description1",
            "price": 333,
            "stock": 444,
            "sku": "sku1",
            "category_id": 88,
            "image_urls": ["string"]
          },
          options: Options(headers: {"Authorization": "Bearer $token"}));
      log(response.statusCode.toString());
      log("isinya apa " + response.data.toString());
      if (response.statusCode == 201) {
        return Right(ProductModel.fromJson(response.data));
      } else {
        return Left('gagal menambahkan data');
      }
    } catch (e) {
      return Left('gagal kenapa ${e} ');
    }
  }
}
