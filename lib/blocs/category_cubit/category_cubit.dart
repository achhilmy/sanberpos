import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sanber_pos/data/category_model/add_category_model.dart';
import 'package:sanber_pos/data/category_model/category_model.dart';
import 'package:sanber_pos/services/services.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(const CategoryState());

  final CategoryServices categoryServices = CategoryServices();

  //get data
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

  //tambah data
  void addCategoryData({String? name}) async {
    /// Emit loading state
    emit(
      state.copyWith(
        addCategoryStatus: AddCategoryStatus.loading,
      ),
    );

    /// Get category
    final res = await categoryServices.addCategory(name: name);

    res.fold((l) {
      emit(state.copyWith(
        addCategoryStatus: AddCategoryStatus.failure,
        message: l,
      ));
    }, (r) {
      emit(state.copyWith(
          addCategoryStatus: AddCategoryStatus.success,
          message: 'Berhasil menambah data',
          addCategoryModel: r));
      emit(state.copyWith(
        addCategoryStatus: AddCategoryStatus.initial,
      ));
    });
  }

  //edit data
  void editCategoryData({String? name, id}) async {
    /// Emit loading state
    emit(
      state.copyWith(
        editCategoryStatus: EditCategoryStatus.loading,
      ),
    );

    /// Get category
    final res = await categoryServices.editCategory(name: name, id: id);

    res.fold((l) {
      emit(state.copyWith(
        editCategoryStatus: EditCategoryStatus.failure,
        message: l,
      ));
    }, (r) {
      emit(state.copyWith(
          editCategoryStatus: EditCategoryStatus.success,
          message: 'Berhasil menambah data',
          editCategoryModel: r));
      emit(state.copyWith(
        editCategoryStatus: EditCategoryStatus.initial,
      ));
    });
  }

  //delete data
  void deleteCategoryData({String? id}) async {
    /// Emit loading state
    emit(
      state.copyWith(
        deleteCategoryStatus: DeleteCategoryStatus.loading,
      ),
    );

    final res = await categoryServices.deleteCategory(id: id);

    res.fold((l) {
      emit(state.copyWith(
        deleteCategoryStatus: DeleteCategoryStatus.failure,
        message: l,
      ));
    }, (r) {
      emit(state.copyWith(
          deleteCategoryStatus: DeleteCategoryStatus.success,
          message: 'Berhasil menghapus data',
          isSuccess: r));
      emit(state.copyWith(
        deleteCategoryStatus: DeleteCategoryStatus.initial,
      ));
    });
  }
}
