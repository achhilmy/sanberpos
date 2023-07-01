import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_model.freezed.dart';
part 'edit_profile_model.g.dart';

@freezed
class EditProfileModel with _$EditProfileModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EditProfileModel({
    String? fullName,
    String? address,
    String? photoUrl,
    String? phoneNumbers,
  }) = _EditProfileModel;

  factory EditProfileModel.fromJson(Map<String, dynamic> json) =>
      _$EditProfileModelFromJson(json);
}
