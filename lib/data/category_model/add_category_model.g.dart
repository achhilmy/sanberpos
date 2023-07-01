// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddCategoryModel _$$_AddCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_AddCategoryModel(
      name: json['name'] as String?,
      userId: json['user_id'] as int?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_AddCategoryModelToJson(_$_AddCategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'user_id': instance.userId,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };

_$_EditCategoryModel _$$_EditCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_EditCategoryModel(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_EditCategoryModelToJson(
        _$_EditCategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
