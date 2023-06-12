// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductModel({
    int? id,
    String? name,
    String? description,
    int? price,
    int? stock,
    String? sku,
    int? userId,
    int? categoryId,
    String? createdAt,
    String? updatedAt,
    List<String>? imageUrls,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
