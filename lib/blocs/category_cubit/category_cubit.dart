import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sanber_pos/data/category_model/category_list_model.dart';
import 'package:sanber_pos/data/category_model/category_model.dart';
import 'package:sanber_pos/services/services.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(const CategoryState());

  final CategoryServices categoryServices = CategoryServices();

  void categoryListData() async {
    /// Emit loading state
    emit(
      state.copyWith(
        categoryListStatus: CategoryListStatus.loading,
      ),
    );

    /// Get category
    final res = await categoryServices.fetchData();

    res.fold((l) {
      emit(state.copyWith(
        categoryListStatus: CategoryListStatus.failure,
        message: l,
      ));
    }, (r) {
      emit(state.copyWith(
          categoryListStatus: CategoryListStatus.success,
          message: 'Berhasil load data',
          categoryModel: r));
    });
  }
}
