part of '../controller.dart';

class CategoryController extends GetxController {
  RxList<CategoryProductModel> categoryList = <CategoryProductModel>[].obs;
  final CategoryServices categoryServices = CategoryServices();
  final isLoading = true.obs;
  final TextEditingController nameController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    getCategoryList();
  }

  void getCategoryList() async {
    try {
      isLoading.value = true;
      final category = await categoryServices.getListCategory();
      categoryList.value = category;
    } finally {
      isLoading.value = false;
    }
    update();
  }

  final CategoryServices _postService = Get.put(CategoryServices());
  final Rx<Either<String, int>> _postResult = Rx<Either<String, int>>(Left(''));
  Rx<Either<String, int>> get postResult => _postResult;

  void createPost(String? name) async {
    isLoading(true);
    final post =
        PostCategory(name: name); // Assuming a fixed user ID for simplicity
    _postResult.value = await _postService.postCategory(post);
    final result = postResult.value;
    log(result.toString());
    if (result.isRight()) {
      isLoading(false);
      Get.snackbar("Success", "Berhasil Menambahkan data");
      refreshData();
      Future.delayed(Duration(seconds: 3), () {
        Get.toNamed(RouteName.choiceCategoryProduct);
        Get.toNamed(RouteName.listCategory);
      });
    } else if (result.isLeft()) {
      isLoading(false);
      Get.snackbar("Error", "Gagal Menambahakan data");
    } else {
      isLoading(false);
      Get.snackbar("Error ", "Gagal Menambahakan data");
    }
    update();
  }

  void refreshData() {
    // Implement your logic to refresh data
    getCategoryList();
    categoryList();
    nameController.clear();
  }
}


                // Obx(() {
                //     final result = categoryInput.postResult.value;
                //     if (result.isRight()) {
                //       return SnackBar(
                //           content: Text("Berhasil menambahkan data"));
                //     } else if (result.isLeft()) {
                //       return SnackBar(content: Text("gagal menambahkan data"));
                //     } else {
                //       return Text("data");
                //     }
                //   }),