part of '../pages.dart';

class AddCategoryPage extends StatelessWidget {
  AddCategoryPage({super.key});

  final categoryInput = Get.find<CategoryController>();
  final categoryInputStatus = Get.find<CategoryActionController>();
  // final TextEditingController _nameController = TextEditingController();
  final CategoryController categoryController = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Category / Edit'),
        ),
        body: Obx(
          () => LoadingOverlay(
            isLoading: categoryInput.isLoading.value,
            child: Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 20, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NormalInputWidget(
                    title: "Input Category",
                    hintText: "Input Category",
                    textController: categoryController.nameController,
                    onChangeText: (value) {
                      Get.find<ButtonController>().changeColor(value);
                    },
                  ),
                  GetX<ButtonController>(
                    builder: (controller) {
                      return Container(
                        child: ButtonLoading(
                          title: "Submit",
                          onPressed: () {
                            controller.isValid.value
                                ? categoryInput.createPost(
                                    categoryController.nameController.text)
                                : null;
                          },
                          isValid: controller.isValid.value,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
