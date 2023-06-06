import 'package:flutter/material.dart';

import '../../widgets/widget.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Product'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Save"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width / 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProductImageWidget(
                imageVal:
                    'https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg',
                heightVal: 448,
                widthVal: 340,
              ),
              Row(
                children: [
                  ProductImageWidget(
                    imageVal:
                        'https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg',
                    heightVal: 80,
                    widthVal: 80,
                  ),
                  ProductImageWidget(
                    imageVal:
                        'https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg',
                    heightVal: 80,
                    widthVal: 80,
                  ),
                  ProductImageWidget(
                    imageVal:
                        'https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg',
                    heightVal: 80,
                    widthVal: 80,
                  ),
                  ProductImageWidget(
                    imageVal:
                        'https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg',
                    heightVal: 80,
                    widthVal: 80,
                  ),
                ],
              ),
              const Divider(),
              const CardDesriptionProduct(
                skuName: "02487287OHDFSO",
                productName: "Women's Stripe Sweater",
                priceProduct: "Rp499.99",
                categoryProduct: "Sweater",
                gender: "Women",
              ),
              const Divider(),
              CardDescriptionProduct(
                title: "Description",
                subTitle:
                    "A comfortable sweater made of yarn that has a cotton surface and an airy polyester core. Cotton provides a durable yet lightweight feel and is machine washable. A striped design with black accents that you can wear anytime.",
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {},
      ),
    );
  }
}
