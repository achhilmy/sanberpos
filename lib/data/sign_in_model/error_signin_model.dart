import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_signin_model.freezed.dart';
part 'error_signin_model.g.dart';

@freezed
class ErrorSignInModel with _$ErrorSignInModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ErrorSignInModel({String? message}) = _ErrorSignInModel;

  factory ErrorSignInModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorSignInModelFromJson(json);
}
