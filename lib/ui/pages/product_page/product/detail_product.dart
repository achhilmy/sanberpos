import 'package:flutter/material.dart';
import 'package:sanber_pos/config/shared/shared.dart';

class DetailProductPage extends StatelessWidget {
  DetailProductPage({super.key, this.dataProduct});

  final dataProduct;
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
                imageVal: dataProduct['image_list'],
                heightVal: 448,
                widthVal: 340,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ProductImageWidget(
                        imageVal: dataProduct['image_list'],
                        heightVal: 80,
                        widthVal: 80,
                      );
                    }),
              ),

              const Divider(),
              CardDesriptionProduct(
                skuName: dataProduct['sku'],
                productName: dataProduct['title'],
                priceProduct: dataProduct['price'],
                categoryProduct: dataProduct['title'],
                gender: dataProduct['title'],
              ),
              const Divider(),
              // CardDescriptionProduct(
              //   title: "Description",
              //   subTitle:
              //       "A comfortable sweater made of yarn that has a cotton surface and an airy polyester core. Cotton provides a durable yet lightweight feel and is machine washable. A striped design with black accents that you can wear anytime.",
              // )
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

// ignore: must_be_immutable
class ProductImageWidget extends StatelessWidget {
  ProductImageWidget({super.key, this.heightVal, this.widthVal, this.imageVal});
  int? heightVal;
  int? widthVal;
  String? imageVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: heightVal?.toDouble(),
      width: widthVal?.toDouble(),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 0.1)),
      child: Image.network(imageVal.toString()),
    );
  }
}

class CardDesriptionProduct extends StatelessWidget {
  const CardDesriptionProduct(
      {super.key,
      this.categoryProduct,
      this.gender,
      this.priceProduct,
      this.productName,
      this.skuName});

  final String? productName;
  final String? skuName;
  final String? priceProduct;
  final String? categoryProduct;
  final String? gender;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Product Name",
                style: titleText.copyWith(fontSize: 16),
              ),
              Text(
                productName.toString(),
                style: titleText.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SKU",
                style: titleText.copyWith(fontSize: 16),
              ),
              Text(
                skuName.toString(),
                style: titleText.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Price",
                style: titleText.copyWith(fontSize: 16),
              ),
              Text(
                priceProduct.toString(),
                style: titleText.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Category",
                style: titleText.copyWith(fontSize: 16),
              ),
              Text(
                categoryProduct.toString(),
                style: titleText.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Gender",
                style: titleText.copyWith(fontSize: 16),
              ),
              Text(
                gender.toString(),
                style: titleText.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
  }
}
