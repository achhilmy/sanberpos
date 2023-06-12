part of '../pages.dart';

class ListCategoryProduct extends StatelessWidget {
  const ListCategoryProduct({super.key});

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
                Navigator.pushNamed(context, '/product');
              },
              child: const ListTile(
                leading: Icon(Icons.production_quantity_limits),
                title: Text('Input Product'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/list-category');
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
