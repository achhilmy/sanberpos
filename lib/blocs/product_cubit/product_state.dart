part of 'product_cubit.dart';

enum ProductListStatus { initial, loading, success, failure }

class ProductCubitState extends Equatable {
  final ProductListStatus productListStatus;
  final List<ProductModel> productModel;
  final String message;

  const ProductCubitState(
      {this.productListStatus = ProductListStatus.initial,
      // ignore: prefer_const_constructors
      this.productModel = const [ProductModel()],
      this.message = ""});
  @override
  List<Object> get props {
    return [
      productListStatus,
      productModel,
      message,
    ];
  }

  ProductCubitState copyWith(
      {ProductListStatus? productListStatus,
      List<ProductModel>? productModel,
      String? message}) {
    return ProductCubitState(
        productListStatus: productListStatus ?? this.productListStatus,
        productModel: productModel ?? this.productModel,
        message: message ?? this.message);
  }
}
