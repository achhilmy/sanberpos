part of 'category_cubit.dart';

enum CategoryListStatus { initial, loading, success, failure }

enum AddCategoryStatus { initial, loading, success, failure }

enum DeleteCategoryStatus { initial, loading, success, failure }

enum EditCategoryStatus { initial, loading, success, failure }

class CategoryState extends Equatable {
  final CategoryListStatus categoryListStatus;
  final List<CategoryModel> categoryModel;
  final String message;
  final AddCategoryStatus addCategoryStatus;
  final AddCategoryModel addCategoryModel;
  final DeleteCategoryStatus deleteCategoryStatus;
  final bool isSuccess;
  final EditCategoryStatus editCategoryStatus;
  final EditCategoryModel editCategoryModel;

  const CategoryState({
    this.categoryListStatus = CategoryListStatus.initial,
    // ignore: prefer_const_constructors
    this.categoryModel = const [CategoryModel()],
    this.message = "",
    this.addCategoryStatus = AddCategoryStatus.initial,
    this.addCategoryModel = const AddCategoryModel(),
    this.deleteCategoryStatus = DeleteCategoryStatus.initial,
    this.isSuccess = false,
    this.editCategoryStatus = EditCategoryStatus.initial,
    this.editCategoryModel = const EditCategoryModel(),
  });
  @override
  List<Object> get props {
    return [
      categoryListStatus,
      categoryModel,
      message,
      addCategoryStatus,
      addCategoryModel,
      deleteCategoryStatus,
      isSuccess,
      editCategoryStatus,
      editCategoryModel
    ];
  }

  CategoryState copyWith(
      {CategoryListStatus? categoryListStatus,
      List<CategoryModel>? categoryModel,
      String? message,
      AddCategoryStatus? addCategoryStatus,
      AddCategoryModel? addCategoryModel,
      DeleteCategoryStatus? deleteCategoryStatus,
      bool? isSuccess,
      EditCategoryStatus? editCategoryStatus,
      EditCategoryModel? editCategoryModel}) {
    return CategoryState(
        categoryListStatus: categoryListStatus ?? this.categoryListStatus,
        categoryModel: categoryModel ?? this.categoryModel,
        message: message ?? this.message,
        addCategoryStatus: addCategoryStatus ?? this.addCategoryStatus,
        addCategoryModel: addCategoryModel ?? this.addCategoryModel,
        deleteCategoryStatus: deleteCategoryStatus ?? this.deleteCategoryStatus,
        isSuccess: isSuccess ?? this.isSuccess,
        editCategoryStatus: editCategoryStatus ?? this.editCategoryStatus,
        editCategoryModel: editCategoryModel ?? this.editCategoryModel);
  }
}
