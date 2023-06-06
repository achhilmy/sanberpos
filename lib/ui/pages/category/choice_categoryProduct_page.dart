part of '../pages.dart';

class ChoiceCategoryProduct extends StatelessWidget {
  const ChoiceCategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Category or Product'),
      ),
      body: Container(
        child: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            InkWell(
              onTap: () {
                Get.toNamed(RouteName.productPages);
              },
              child: const ListTile(
                leading: Icon(Icons.production_quantity_limits),
                title: Text('Input Product'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(RouteName.listCategory);
              },
              child: const ListTile(
                leading: Icon(Icons.category),
                title: Text('Input Category'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            )
          ]).toList(),
        ),
      ),
    );
  }
}
