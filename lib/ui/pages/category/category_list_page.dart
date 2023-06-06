part of '../pages.dart';

class CategoryListPage extends StatelessWidget {
  //  CategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Category'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Obx(
          () => categoryController.categoryList.isEmpty
              ? const Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Loading ...... '),
                  ],
                ))
              : ListView.separated(
                  itemCount: categoryController.categoryList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = categoryController.categoryList[index];
                    return ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.purple,
                        ),
                      ),
                      title: Text(item.name.toString()),
                      trailing: IconButton(
                        onPressed: () {
                          Get.dialog(CardConfirmation(
                            onPressedNo: () {
                              print("hello world");
                              Navigator.pop(context);
                            },
                            onPressedYes: () {},
                          ));
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Get.toNamed(RouteName.testAddCategory);
          Get.toNamed(RouteName.addCategory);
        },
      ),
    );
  }
}
