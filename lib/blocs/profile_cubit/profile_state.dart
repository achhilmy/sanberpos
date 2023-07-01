part of 'profile_cubit.dart';

enum ProfileStatus { initial, loading, success, failure }

enum EditProfileStatus { initial, loading, success, failure }

class ProfileState extends Equatable {
  final ProfileStatus profileStatus;
  final EditProfileStatus editProfileStatus;
  final EditProfileModel editProfileModel;
  final String message;
  final ProfileModel profileModel;

  const ProfileState(
      {this.profileStatus = ProfileStatus.initial,
      this.editProfileStatus = EditProfileStatus.initial,
      this.profileModel = const ProfileModel(),
      this.editProfileModel = const EditProfileModel(),
      this.message = ""});
  @override
  List<Object> get props {
    return [
      profileStatus,
      editProfileStatus,
      editProfileModel,
      profileModel,
      message
    ];
  }

  ProfileState copyWith(
      {ProfileStatus? profileStatus,
      EditProfileStatus? editProfileStatus,
      ProfileModel? profileModel,
      String? message,
      EditProfileModel? editProfileModel}) {
    return ProfileState(
        profileStatus: profileStatus ?? this.profileStatus,
        editProfileStatus: editProfileStatus ?? this.editProfileStatus,
        profileModel: profileModel ?? this.profileModel,
        message: message ?? this.message,
        editProfileModel: editProfileModel ?? this.editProfileModel);
  }
}
