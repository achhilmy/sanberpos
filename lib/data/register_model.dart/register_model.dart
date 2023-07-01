import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RegisterModel({
    String? name,
    String? email,
    String? password,
    String? passwordConfirmation,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
