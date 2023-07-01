// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      fullName: json['full_name'] as String?,
      address: json['address'] as String?,
      phoneNumbers: json['phone_numbers'] as String?,
      photoUrl: json['photo_url'] as String?,
      userId: json['user_id'] as int?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'address': instance.address,
      'phone_numbers': instance.phoneNumbers,
      'photo_url': instance.photoUrl,
      'user_id': instance.userId,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };
