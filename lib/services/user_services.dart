part of 'services.dart';

class UserService {
  Future<List<User>> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((userJson) => User.fromJson(userJson)).toList();
    } else {
      throw Exception('Failed to fetch users');
    }
  }
}
