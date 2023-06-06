part of 'services.dart';

class CategoryServices {
  final Dio _dio = Dio();
  //get list category
  Future<List<CategoryProductModel>> getListCategory() async {
    final response = await http.get(Uri.parse('${baseUrl}api/categories'));
    log(response.body.toString());
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData
          .map((userJson) => CategoryProductModel.fromJson(userJson))
          .toList();
      // List jsonResponse = convert.jsonDecode(res.data);
      // return jsonResponse.map((e) => CategoryProductModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch users');
    }
  }

// post data api
  Future<Either<String, int>> postCategory(PostCategory category) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('user-token') ?? '';
    try {
      Response response = await _dio.post(
        '${baseUrl}api/categories',
        options: Options(headers: {'Authorization': "Bearer $token"}),
        data: category.toJson(),
      );
      log(response.data.toString());
      if (response.statusCode == 201) {
        // Post created successfully
        return Right(response.data['id']);
      } else {
        // Post creation failed
        return Left('Failed to create post');
      }
    } catch (error) {
      return Left('Error occurred while creating post: $error');
    }
  }
}
