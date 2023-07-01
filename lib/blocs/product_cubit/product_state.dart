part of 'product_cubit.dart';

enum ProductListStatus { initial, loading, success, failure }

enum DeleteProductStatus { initial, loading, success, failure }

enum AddProductStatus { initial, loading, success, failure }

class ProductCubitState extends Equatable {
  final ProductListStatus productListStatus;
  final List<ProductModel> productModel;
  final String message;
  final DeleteProductStatus deleteProductStatus;
  final bool isSuccess;
  final AddProductStatus addProductStatus;
  final ProductModel addProductModel;
  final bool isLoading;
  const ProductCubitState(
      {this.productListStatus = ProductListStatus.initial,
      // ignore: prefer_const_constructors
      this.productModel = const [ProductModel()],
      this.message = "",
      this.deleteProductStatus = DeleteProductStatus.initial,
      this.isSuccess = false,
      this.addProductStatus = AddProductStatus.initial,
      this.addProductModel = const ProductModel(),
      this.isLoading = false});
  @override
  List<Object> get props {
    return [
      productListStatus,
      productModel,
      message,
      deleteProductStatus,
      isSuccess,
      addProductModel,
      isLoading
    ];
  }

  ProductCubitState copyWith(
      {ProductListStatus? productListStatus,
      List<ProductModel>? productModel,
      String? message,
      DeleteProductStatus? deleteProductStatus,
      bool? isSuccess,
      AddProductStatus? addProductStatus,
      ProductModel? addProductModel,
      bool? isLoading}) {
    return ProductCubitState(
        productListStatus: productListStatus ?? this.productListStatus,
        productModel: productModel ?? this.productModel,
        message: message ?? this.message,
        deleteProductStatus: deleteProductStatus ?? this.deleteProductStatus,
        isSuccess: isSuccess ?? this.isSuccess,
        addProductStatus: addProductStatus ?? this.addProductStatus,
        addProductModel: addProductModel ?? this.addProductModel,
        isLoading: isLoading ?? this.isLoading);
  }
}
