// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInModel _$$_SignInModelFromJson(Map<String, dynamic> json) =>
    _$_SignInModel(
      responseCode: json['response_code'] as String?,
      responseMessage: json['response_message'] as String?,
      data: json['data'] == null
          ? null
          : DataSignIn.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignInModelToJson(_$_SignInModel instance) =>
    <String, dynamic>{
      'response_code': instance.responseCode,
      'response_message': instance.responseMessage,
      'data': instance.data,
    };

_$_DataSignIn _$$_DataSignInFromJson(Map<String, dynamic> json) =>
    _$_DataSignIn(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_DataSignInToJson(_$_DataSignIn instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
