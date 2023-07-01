// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddProductModel _$$_AddProductModelFromJson(Map<String, dynamic> json) =>
    _$_AddProductModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      stock: json['stock'] as String?,
      sku: json['sku'] as String?,
      userId: json['user_id'] as String?,
      categoryId: json['category_id'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_AddProductModelToJson(_$_AddProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'sku': instance.sku,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };
