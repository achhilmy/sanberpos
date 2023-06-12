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
//   Future<Either<String, dynamic>> categoryList(
//       {String? email, String? password}) async {
//     final categroyList = await DioHttp.getReq(url: API_CATEGORY.categoryList);
//     // log(categroyList.toString());
//     return categroyList.fold(
//       (l) {
//         return Left(l);
//       },
//       (r) async {
//  final List<CategoryModel> jsonData = json.decode(categroyList as List);
//       return jsonData
//           .map((userJson) => CategoryModel.fromJson(userJson))
//           .toList();

//         CategoryModel categoryModel = CategoryModel();
//         // List<Map<String, dynamic>> list2 =
//         //     categoryModel.toJson().entries.map((entry) {
//         //   return {entry.key: entry.value};
//         // }).toList();
//         // return Right(list2);
//       List<Map<String, dynamic>> list = [];

//       CategoryModel.forEach((key, value) {
//         Map<String, dynamic> entryMap = {
//           'key': key,
//           'value': value,
//         };

//       list.add(entryMap);
// });

//       },

//     );
//   }
}
