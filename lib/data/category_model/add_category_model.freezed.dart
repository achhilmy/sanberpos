// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCategoryModel _$AddCategoryModelFromJson(Map<String, dynamic> json) {
  return _AddCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$AddCategoryModel {
  String? get name => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCategoryModelCopyWith<AddCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCategoryModelCopyWith<$Res> {
  factory $AddCategoryModelCopyWith(
          AddCategoryModel value, $Res Function(AddCategoryModel) then) =
      _$AddCategoryModelCopyWithImpl<$Res, AddCategoryModel>;
  @useResult
  $Res call(
      {String? name,
      int? userId,
      String? updatedAt,
      String? createdAt,
      int? id});
}

/// @nodoc
class _$AddCategoryModelCopyWithImpl<$Res, $Val extends AddCategoryModel>
    implements $AddCategoryModelCopyWith<$Res> {
  _$AddCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? userId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCategoryModelCopyWith<$Res>
    implements $AddCategoryModelCopyWith<$Res> {
  factory _$$_AddCategoryModelCopyWith(
          _$_AddCategoryModel value, $Res Function(_$_AddCategoryModel) then) =
      __$$_AddCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? userId,
      String? updatedAt,
      String? createdAt,
      int? id});
}

/// @nodoc
class __$$_AddCategoryModelCopyWithImpl<$Res>
    extends _$AddCategoryModelCopyWithImpl<$Res, _$_AddCategoryModel>
    implements _$$_AddCategoryModelCopyWith<$Res> {
  __$$_AddCategoryModelCopyWithImpl(
      _$_AddCategoryModel _value, $Res Function(_$_AddCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? userId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_AddCategoryModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_AddCategoryModel implements _AddCategoryModel {
  const _$_AddCategoryModel(
      {this.name, this.userId, this.updatedAt, this.createdAt, this.id});

  factory _$_AddCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddCategoryModelFromJson(json);

  @override
  final String? name;
  @override
  final int? userId;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final int? id;

  @override
  String toString() {
    return 'AddCategoryModel(name: $name, userId: $userId, updatedAt: $updatedAt, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCategoryModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, userId, updatedAt, createdAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCategoryModelCopyWith<_$_AddCategoryModel> get copyWith =>
      __$$_AddCategoryModelCopyWithImpl<_$_AddCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddCategoryModelToJson(
      this,
    );
  }
}

abstract class _AddCategoryModel implements AddCategoryModel {
  const factory _AddCategoryModel(
      {final String? name,
      final int? userId,
      final String? updatedAt,
      final String? createdAt,
      final int? id}) = _$_AddCategoryModel;

  factory _AddCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_AddCategoryModel.fromJson;

  @override
  String? get name;
  @override
  int? get userId;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AddCategoryModelCopyWith<_$_AddCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

EditCategoryModel _$EditCategoryModelFromJson(Map<String, dynamic> json) {
  return _EditCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$EditCategoryModel {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditCategoryModelCopyWith<EditCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCategoryModelCopyWith<$Res> {
  factory $EditCategoryModelCopyWith(
          EditCategoryModel value, $Res Function(EditCategoryModel) then) =
      _$EditCategoryModelCopyWithImpl<$Res, EditCategoryModel>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$EditCategoryModelCopyWithImpl<$Res, $Val extends EditCategoryModel>
    implements $EditCategoryModelCopyWith<$Res> {
  _$EditCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditCategoryModelCopyWith<$Res>
    implements $EditCategoryModelCopyWith<$Res> {
  factory _$$_EditCategoryModelCopyWith(_$_EditCategoryModel value,
          $Res Function(_$_EditCategoryModel) then) =
      __$$_EditCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_EditCategoryModelCopyWithImpl<$Res>
    extends _$EditCategoryModelCopyWithImpl<$Res, _$_EditCategoryModel>
    implements _$$_EditCategoryModelCopyWith<$Res> {
  __$$_EditCategoryModelCopyWithImpl(
      _$_EditCategoryModel _value, $Res Function(_$_EditCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_EditCategoryModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_EditCategoryModel implements _EditCategoryModel {
  const _$_EditCategoryModel({this.name});

  factory _$_EditCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_EditCategoryModelFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'EditCategoryModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditCategoryModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCategoryModelCopyWith<_$_EditCategoryModel> get copyWith =>
      __$$_EditCategoryModelCopyWithImpl<_$_EditCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditCategoryModelToJson(
      this,
    );
  }
}

abstract class _EditCategoryModel implements EditCategoryModel {
  const factory _EditCategoryModel({final String? name}) = _$_EditCategoryModel;

  factory _EditCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_EditCategoryModel.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_EditCategoryModelCopyWith<_$_EditCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
