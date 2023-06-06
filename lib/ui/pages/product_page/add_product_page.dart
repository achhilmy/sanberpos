part of '../pages.dart';

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
