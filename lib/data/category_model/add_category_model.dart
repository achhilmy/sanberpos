import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_category_model.freezed.dart';
part 'add_category_model.g.dart';

@freezed
class AddCategoryModel with _$AddCategoryModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AddCategoryModel(
      {String? name,
      int? userId,
      String? updatedAt,
      String? createdAt,
      int? id}) = _AddCategoryModel;

  factory AddCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryModelFromJson(json);
}
