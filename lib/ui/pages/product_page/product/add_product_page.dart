import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:sanber_pos/blocs/product_cubit/product_cubit.dart';
import 'package:sanber_pos/config/shared/shared.dart';
import 'package:sanber_pos/data/models.dart';
import 'package:sanber_pos/ui/widgets/widget.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key, this.isEdit});

  final isEdit;

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController stokController = TextEditingController();

  TextEditingController skuController = TextEditingController();

  TextEditingController imageUrlController = TextEditingController();

  bool isValid = false;

  int? price, stock;
  void initState() {
    print(widget.isEdit);
    super.initState();
  }

  void onSubmit() {
    context.read<ProductCubit>().addProduct(
        name: nameController.text,
        description: descriptionController.text,
        price: priceController.text,
        stock: stokController.text,
        sku: skuController.text,
        categoryId: 88,
        image: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: widget.isEdit["isEdit"] == true
              ? Text('Edit Product')
              : Text("Add Product")),
      body: BlocListener<ProductCubit, ProductCubitState>(
          listener: (context, state) {
            log(state.addProductStatus.toString());
            if (state.addProductStatus == AddProductStatus.success) {
              final snackBar = SnackBar(
                content: Text('Data Berhasil di tambah'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              // context.read<ProductCubit>().productListData();
              Future.delayed(Duration(seconds: 2), () {
                Navigator.pop(context);
              });
            } else if (state.addProductStatus == AddProductStatus.failure) {
              final snackBar = SnackBar(
                content: Text(state.message.toString()),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                InputTexFieldstWidget(
                  title: "Product Name",
                  subTitle:
                      "Do not exceed 20 characters when entering the product name.",
                  hintText: "Enter Product Name",
                  controller: nameController,
                ),
                InputTexFieldstWidget(
                  title: "Sku",
                  subTitle:
                      "SKU is a scannable barcode and is the unit of measure in which the stock of a product is managed.",
                  hintText: "Enter Sku",
                  controller: skuController,
                ),
                InputTexFieldstWidget(
                  title: "Pricing",
                  subTitle: "",
                  hintText: "Rp ...",
                  controller: priceController,
                ),
                const InputTexFieldstWidget(
                  title: "Category",
                  subTitle:
                      "Please select your product category from the list provided.",
                  hintText: "Enter Product Name",
                ),
                InputTexFieldstWidget(
                  title: "Stok",
                  subTitle:
                      "Do not exceed 20 characters when entering the product name.",
                  hintText: "Enter Product Name",
                  controller: stokController,
                ),
                const InputPhotoProduct(
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
                  controller: descriptionController,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ButtonLoading(
                    title: 'Submit',
                    isValid: true,
                    onPressed: () {
                      isValid == true ? onSubmit() : onSubmit();
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class InputTexFieldstWidget extends StatelessWidget {
  const InputTexFieldstWidget(
      {super.key,
      this.title,
      this.subTitle,
      this.hintText,
      this.maxLinesval,
      this.controller});
  final String? title;
  final String? subTitle;
  final String? hintText;
  final bool? maxLinesval;
  final controller;

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
              ? NormalInputWidget(
                  hintText: hintText,
                  maxLines: 5,
                  textController: controller,
                )
              : NormalInputWidget(
                  hintText: hintText,
                  maxLines: 1,
                  textController: controller,
                ),
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
