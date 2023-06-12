part of 'services.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> fetchData() async {
    try {
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/posts');
      return response;
    } catch (e) {
      throw Exception('Failed to fetch data');
    }
  }
}
