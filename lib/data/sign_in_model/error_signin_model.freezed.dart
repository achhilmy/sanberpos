// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_signin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorSignInModel _$ErrorSignInModelFromJson(Map<String, dynamic> json) {
  return _ErrorSignInModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorSignInModel {
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorSignInModelCopyWith<ErrorSignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorSignInModelCopyWith<$Res> {
  factory $ErrorSignInModelCopyWith(
          ErrorSignInModel value, $Res Function(ErrorSignInModel) then) =
      _$ErrorSignInModelCopyWithImpl<$Res, ErrorSignInModel>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ErrorSignInModelCopyWithImpl<$Res, $Val extends ErrorSignInModel>
    implements $ErrorSignInModelCopyWith<$Res> {
  _$ErrorSignInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorSignInModelCopyWith<$Res>
    implements $ErrorSignInModelCopyWith<$Res> {
  factory _$$_ErrorSignInModelCopyWith(
          _$_ErrorSignInModel value, $Res Function(_$_ErrorSignInModel) then) =
      __$$_ErrorSignInModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ErrorSignInModelCopyWithImpl<$Res>
    extends _$ErrorSignInModelCopyWithImpl<$Res, _$_ErrorSignInModel>
    implements _$$_ErrorSignInModelCopyWith<$Res> {
  __$$_ErrorSignInModelCopyWithImpl(
      _$_ErrorSignInModel _value, $Res Function(_$_ErrorSignInModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ErrorSignInModel(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ErrorSignInModel implements _ErrorSignInModel {
  const _$_ErrorSignInModel({this.message});

  factory _$_ErrorSignInModel.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorSignInModelFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'ErrorSignInModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSignInModel &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSignInModelCopyWith<_$_ErrorSignInModel> get copyWith =>
      __$$_ErrorSignInModelCopyWithImpl<_$_ErrorSignInModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorSignInModelToJson(
      this,
    );
  }
}

abstract class _ErrorSignInModel implements ErrorSignInModel {
  const factory _ErrorSignInModel({final String? message}) =
      _$_ErrorSignInModel;

  factory _ErrorSignInModel.fromJson(Map<String, dynamic> json) =
      _$_ErrorSignInModel.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorSignInModelCopyWith<_$_ErrorSignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}
