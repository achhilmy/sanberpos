part of 'product_cubit.dart';

enum ProductListStatus { initial, loading, success, failure }

enum DeleteProductStatus { initial, loading, success, failure }

class ProductCubitState extends Equatable {
  final ProductListStatus productListStatus;
  final List<ProductModel> productModel;
  final String message;
  final DeleteProductStatus deleteProductStatus;
  final bool isSuccess;

  const ProductCubitState(
      {this.productListStatus = ProductListStatus.initial,
      // ignore: prefer_const_constructors
      this.productModel = const [ProductModel()],
      this.message = "",
      this.deleteProductStatus = DeleteProductStatus.initial,
      this.isSuccess = false});
  @override
  List<Object> get props {
    return [
      productListStatus,
      productModel,
      message,
      deleteProductStatus,
      isSuccess
    ];
  }

  ProductCubitState copyWith(
      {ProductListStatus? productListStatus,
      List<ProductModel>? productModel,
      String? message,
      DeleteProductStatus? deleteProductStatus,
      bool? isSuccess}) {
    return ProductCubitState(
        productListStatus: productListStatus ?? this.productListStatus,
        productModel: productModel ?? this.productModel,
        message: message ?? this.message,
        deleteProductStatus: deleteProductStatus ?? this.deleteProductStatus,
        isSuccess: isSuccess ?? this.isSuccess);
  }
}
