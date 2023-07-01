import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_model.freezed.dart';
part 'add_product_model.g.dart';

@freezed
class AddProductModel with _$AddProductModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AddProductModel({
    String? name,
    String? description,
    String? price,
    String? stock,
    String? sku,
    String? userId,
    String? categoryId,
    String? updatedAt,
    String? createdAt,
    String? id,
  }) = _AddProductModel;

  factory AddProductModel.fromJson(Map<String, dynamic> json) =>
      _$AddProductModelFromJson(json);
}
