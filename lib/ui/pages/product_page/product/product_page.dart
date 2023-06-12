part of '../../pages.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "List Product",
                  style: titleText.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [Icon(Icons.add), Text("Add")],
                    ))
              ],
            ),
            const SizedBox(height: 10),
            CardProduct(
                image:
                    "https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg",
                title: "Baju Cristiano ronaldo",
                type: "Outer",
                stock: "200",
                price: "20000"),
            CardProduct(
                image:
                    "https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg",
                title: "Baju Cristiano ronaldo",
                type: "Outer",
                stock: "200",
                price: "20000"),
            CardProduct(
                image:
                    "https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg",
                title: "Baju Cristiano ronaldo",
                type: "Outer",
                stock: "200",
                price: "20000"),
          ],
        ),
      ),
    );
  }
}
