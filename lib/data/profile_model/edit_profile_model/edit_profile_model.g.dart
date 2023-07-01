// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditProfileModel _$$_EditProfileModelFromJson(Map<String, dynamic> json) =>
    _$_EditProfileModel(
      fullName: json['full_name'] as String?,
      address: json['address'] as String?,
      photoUrl: json['photo_url'] as String?,
      phoneNumbers: json['phone_numbers'] as String?,
    );

Map<String, dynamic> _$$_EditProfileModelToJson(_$_EditProfileModel instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'address': instance.address,
      'photo_url': instance.photoUrl,
      'phone_numbers': instance.phoneNumbers,
    };
