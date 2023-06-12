part of 'category_cubit.dart';

enum CategoryListStatus { initial, loading, success, failure }

class CategoryState extends Equatable {
  final CategoryListStatus categoryListStatus;
  final List<CategoryListModel> categoryModel;
  final String message;

  const CategoryState(
      {this.categoryListStatus = CategoryListStatus.initial,
      // ignore: prefer_const_constructors
      this.categoryModel = const [CategoryListModel()],
      this.message = ""});
  @override
  List<Object> get props {
    return [
      categoryListStatus,
      categoryModel,
      message,
    ];
  }

  CategoryState copyWith(
      {CategoryListStatus? categoryListStatus,
      List<CategoryListModel>? categoryModel,
      String? message}) {
    return CategoryState(
        categoryListStatus: categoryListStatus ?? this.categoryListStatus,
        categoryModel: categoryModel ?? this.categoryModel,
        message: message ?? this.message);
  }
}
