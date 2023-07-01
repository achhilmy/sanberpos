// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditProfileModel _$EditProfileModelFromJson(Map<String, dynamic> json) {
  return _EditProfileModel.fromJson(json);
}

/// @nodoc
mixin _$EditProfileModel {
  String? get fullName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get phoneNumbers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileModelCopyWith<EditProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileModelCopyWith<$Res> {
  factory $EditProfileModelCopyWith(
          EditProfileModel value, $Res Function(EditProfileModel) then) =
      _$EditProfileModelCopyWithImpl<$Res, EditProfileModel>;
  @useResult
  $Res call(
      {String? fullName,
      String? address,
      String? photoUrl,
      String? phoneNumbers});
}

/// @nodoc
class _$EditProfileModelCopyWithImpl<$Res, $Val extends EditProfileModel>
    implements $EditProfileModelCopyWith<$Res> {
  _$EditProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? address = freezed,
    Object? photoUrl = freezed,
    Object? phoneNumbers = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditProfileModelCopyWith<$Res>
    implements $EditProfileModelCopyWith<$Res> {
  factory _$$_EditProfileModelCopyWith(
          _$_EditProfileModel value, $Res Function(_$_EditProfileModel) then) =
      __$$_EditProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? address,
      String? photoUrl,
      String? phoneNumbers});
}

/// @nodoc
class __$$_EditProfileModelCopyWithImpl<$Res>
    extends _$EditProfileModelCopyWithImpl<$Res, _$_EditProfileModel>
    implements _$$_EditProfileModelCopyWith<$Res> {
  __$$_EditProfileModelCopyWithImpl(
      _$_EditProfileModel _value, $Res Function(_$_EditProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? address = freezed,
    Object? photoUrl = freezed,
    Object? phoneNumbers = freezed,
  }) {
    return _then(_$_EditProfileModel(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_EditProfileModel implements _EditProfileModel {
  const _$_EditProfileModel(
      {this.fullName, this.address, this.photoUrl, this.phoneNumbers});

  factory _$_EditProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_EditProfileModelFromJson(json);

  @override
  final String? fullName;
  @override
  final String? address;
  @override
  final String? photoUrl;
  @override
  final String? phoneNumbers;

  @override
  String toString() {
    return 'EditProfileModel(fullName: $fullName, address: $address, photoUrl: $photoUrl, phoneNumbers: $phoneNumbers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileModel &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.phoneNumbers, phoneNumbers) ||
                other.phoneNumbers == phoneNumbers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, address, photoUrl, phoneNumbers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProfileModelCopyWith<_$_EditProfileModel> get copyWith =>
      __$$_EditProfileModelCopyWithImpl<_$_EditProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditProfileModelToJson(
      this,
    );
  }
}

abstract class _EditProfileModel implements EditProfileModel {
  const factory _EditProfileModel(
      {final String? fullName,
      final String? address,
      final String? photoUrl,
      final String? phoneNumbers}) = _$_EditProfileModel;

  factory _EditProfileModel.fromJson(Map<String, dynamic> json) =
      _$_EditProfileModel.fromJson;

  @override
  String? get fullName;
  @override
  String? get address;
  @override
  String? get photoUrl;
  @override
  String? get phoneNumbers;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileModelCopyWith<_$_EditProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
