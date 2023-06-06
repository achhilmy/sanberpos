part of '../widget.dart';

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
