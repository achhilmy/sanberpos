part of 'services.dart';

class PostRepository {
  final ApiService _apiService = ApiService();

  Future<Either<String, List<Post>>> fetchData() async {
    try {
      final response = await _apiService.fetchData();
      final List<Post> posts =
          (response.data as List).map((json) => Post.fromJson(json)).toList();
      return Right(posts);
    } catch (e) {
      return Left('Failed to fetch data');
    }
  }
}
