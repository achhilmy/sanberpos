part of '../widget.dart';

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
