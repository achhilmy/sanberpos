// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInModel _$SignInModelFromJson(Map<String, dynamic> json) {
  return _SignInModel.fromJson(json);
}

/// @nodoc
mixin _$SignInModel {
  String? get responseCode => throw _privateConstructorUsedError;
  String? get responseMessage => throw _privateConstructorUsedError;
  DataSignIn? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInModelCopyWith<SignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInModelCopyWith<$Res> {
  factory $SignInModelCopyWith(
          SignInModel value, $Res Function(SignInModel) then) =
      _$SignInModelCopyWithImpl<$Res, SignInModel>;
  @useResult
  $Res call({String? responseCode, String? responseMessage, DataSignIn? data});

  $DataSignInCopyWith<$Res>? get data;
}

/// @nodoc
class _$SignInModelCopyWithImpl<$Res, $Val extends SignInModel>
    implements $SignInModelCopyWith<$Res> {
  _$SignInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? responseMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSignIn?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataSignInCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataSignInCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignInModelCopyWith<$Res>
    implements $SignInModelCopyWith<$Res> {
  factory _$$_SignInModelCopyWith(
          _$_SignInModel value, $Res Function(_$_SignInModel) then) =
      __$$_SignInModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? responseCode, String? responseMessage, DataSignIn? data});

  @override
  $DataSignInCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_SignInModelCopyWithImpl<$Res>
    extends _$SignInModelCopyWithImpl<$Res, _$_SignInModel>
    implements _$$_SignInModelCopyWith<$Res> {
  __$$_SignInModelCopyWithImpl(
      _$_SignInModel _value, $Res Function(_$_SignInModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? responseMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SignInModel(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSignIn?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SignInModel implements _SignInModel {
  const _$_SignInModel({this.responseCode, this.responseMessage, this.data});

  factory _$_SignInModel.fromJson(Map<String, dynamic> json) =>
      _$$_SignInModelFromJson(json);

  @override
  final String? responseCode;
  @override
  final String? responseMessage;
  @override
  final DataSignIn? data;

  @override
  String toString() {
    return 'SignInModel(responseCode: $responseCode, responseMessage: $responseMessage, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInModel &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            (identical(other.responseMessage, responseMessage) ||
                other.responseMessage == responseMessage) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, responseCode, responseMessage, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInModelCopyWith<_$_SignInModel> get copyWith =>
      __$$_SignInModelCopyWithImpl<_$_SignInModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInModelToJson(
      this,
    );
  }
}

abstract class _SignInModel implements SignInModel {
  const factory _SignInModel(
      {final String? responseCode,
      final String? responseMessage,
      final DataSignIn? data}) = _$_SignInModel;

  factory _SignInModel.fromJson(Map<String, dynamic> json) =
      _$_SignInModel.fromJson;

  @override
  String? get responseCode;
  @override
  String? get responseMessage;
  @override
  DataSignIn? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SignInModelCopyWith<_$_SignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSignIn _$DataSignInFromJson(Map<String, dynamic> json) {
  return _DataSignIn.fromJson(json);
}

/// @nodoc
mixin _$DataSignIn {
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSignInCopyWith<DataSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSignInCopyWith<$Res> {
  factory $DataSignInCopyWith(
          DataSignIn value, $Res Function(DataSignIn) then) =
      _$DataSignInCopyWithImpl<$Res, DataSignIn>;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class _$DataSignInCopyWithImpl<$Res, $Val extends DataSignIn>
    implements $DataSignInCopyWith<$Res> {
  _$DataSignInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataSignInCopyWith<$Res>
    implements $DataSignInCopyWith<$Res> {
  factory _$$_DataSignInCopyWith(
          _$_DataSignIn value, $Res Function(_$_DataSignIn) then) =
      __$$_DataSignInCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$_DataSignInCopyWithImpl<$Res>
    extends _$DataSignInCopyWithImpl<$Res, _$_DataSignIn>
    implements _$$_DataSignInCopyWith<$Res> {
  __$$_DataSignInCopyWithImpl(
      _$_DataSignIn _value, $Res Function(_$_DataSignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_DataSignIn(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DataSignIn implements _DataSignIn {
  const _$_DataSignIn({this.token});

  factory _$_DataSignIn.fromJson(Map<String, dynamic> json) =>
      _$$_DataSignInFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'DataSignIn(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSignIn &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSignInCopyWith<_$_DataSignIn> get copyWith =>
      __$$_DataSignInCopyWithImpl<_$_DataSignIn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSignInToJson(
      this,
    );
  }
}

abstract class _DataSignIn implements DataSignIn {
  const factory _DataSignIn({final String? token}) = _$_DataSignIn;

  factory _DataSignIn.fromJson(Map<String, dynamic> json) =
      _$_DataSignIn.fromJson;

  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_DataSignInCopyWith<_$_DataSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}
