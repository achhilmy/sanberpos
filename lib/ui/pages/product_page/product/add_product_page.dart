import 'package:flutter/material.dart';
import 'package:sanber_pos/config/shared/shared.dart';
import 'package:sanber_pos/ui/widgets/widget.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Product')),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          InputTexFieldstWidget(
            title: "Product Name",
            subTitle:
                "Do not exceed 20 characters when entering the product name.",
            hintText: "Enter Product Name",
          ),
          InputTexFieldstWidget(
            title: "Sku",
            subTitle:
                "SKU is a scannable barcode and is the unit of measure in which the stock of a product is managed.",
            hintText: "Enter Sku",
          ),
          InputTexFieldstWidget(
            title: "Pricing",
            subTitle: "",
            hintText: "Rp ...",
          ),
          InputTexFieldstWidget(
            title: "Category",
            subTitle:
                "Please select your product category from the list provided.",
            hintText: "Enter Product Name",
          ),
          InputTexFieldstWidget(
            title: "Product Name",
            subTitle:
                "Do not exceed 20 characters when entering the product name.",
            hintText: "Enter Product Name",
          ),
          InputPhotoProduct(
            title: "Photo Product",
            subTitle:
                "Recommended minimum width 1080px X 1080px, with a max size of 5MB, only *.png, *.jpg and *.jpeg image files are accepted.",
          ),
          InputTexFieldstWidget(
            title: "Product Description",
            subTitle:
                "Do not exceed 20 characters when entering the product name.",
            hintText: "Enter Product Name",
            maxLinesval: true,
          ),
        ],
      )),
    );
  }
}

class InputTexFieldstWidget extends StatelessWidget {
  const InputTexFieldstWidget(
      {super.key, this.title, this.subTitle, this.hintText, this.maxLinesval});
  final String? title;
  final String? subTitle;
  final String? hintText;
  final bool? maxLinesval;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toString(),
            style:
                titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 350,
            child: Text(
              subTitle.toString(),
              style:
                  titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          maxLinesval == true
              ? NormalInputWidget(hintText: hintText, maxLines: 5)
              : NormalInputWidget(hintText: hintText, maxLines: 1),
          const Divider()
        ],
      ),
    );
  }
}

class InputPhotoProduct extends StatelessWidget {
  const InputPhotoProduct(
      {super.key, this.title, this.subTitle, this.hintText, this.maxLinesval});
  final String? title;
  final String? subTitle;
  final String? hintText;
  final bool? maxLinesval;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toString(),
            style:
                titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 350,
            child: Text(
              subTitle.toString(),
              style:
                  titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.upload),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Add Image"))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.upload),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Add Image"))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.upload),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Add Image"))
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
