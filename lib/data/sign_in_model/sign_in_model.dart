import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_model.freezed.dart';
part 'sign_in_model.g.dart';

@freezed
class SignInModel with _$SignInModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SignInModel({
    String? responseCode,
    String? responseMessage,
    DataSignIn? data,
    // String? error,
  }) = _SignInModel;

  factory SignInModel.fromJson(Map<String, dynamic> json) =>
      _$SignInModelFromJson(json);
}

@freezed
class DataSignIn with _$DataSignIn {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DataSignIn({
    String? token,
  }) = _DataSignIn;

  factory DataSignIn.fromJson(Map<String, dynamic> json) =>
      _$DataSignInFromJson(json);
}
