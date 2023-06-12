import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_pos/data/product_model/product_model.dart';
import 'package:sanber_pos/services/services.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductCubitState> {
  ProductCubit() : super(ProductCubitState());
  final ProductServices productServices = ProductServices();
  void productListData() async {
    /// Emit loading state
    emit(
      state.copyWith(
        productListStatus: ProductListStatus.loading,
      ),
    );

    /// Get category
    final res = await productServices.fetchData();

    res.fold((l) {
      emit(state.copyWith(
        productListStatus: ProductListStatus.failure,
        message: l,
      ));
    }, (r) {
      emit(state.copyWith(
          productListStatus: ProductListStatus.success,
          message: 'Berhasil load data',
          productModel: r));
    });
  }
}
