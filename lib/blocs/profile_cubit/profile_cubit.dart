import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sanber_pos/data/profile_model/edit_profile_model/edit_profile_model.dart';
import 'package:sanber_pos/data/profile_model/profile_model.dart';
import 'package:sanber_pos/services/services.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState());
  final ProfileServices profileServices = ProfileServices();

  void profileData() async {
    /// Emit loading state
    emit(
      state.copyWith(
        profileStatus: ProfileStatus.loading,
      ),
    );

    /// Get profile
    final res = await profileServices.fetchData();
    return res.fold((l) {
      emit(state.copyWith(
        profileStatus: ProfileStatus.failure,
        message: l,
      ));
    }, (r) {
      emit(state.copyWith(
          profileStatus: ProfileStatus.success,
          message: 'Berhasil load data',
          profileModel: r));
    });
  }

  void editProfileData({fullName, address, photoUrl, phoneNumber}) async {
    /// Emit loading state
    emit(
      state.copyWith(
        editProfileStatus: EditProfileStatus.loading,
      ),
    );

    /// Get profile
    final res = await profileServices.editProfile(
        fullName: fullName,
        address: address,
        photoUrl: photoUrl,
        phoneNumber: phoneNumber);
    return res.fold((l) {
      emit(state.copyWith(
        editProfileStatus: EditProfileStatus.failure,
        message: l,
      ));
    }, (r) {
      emit(state.copyWith(
          editProfileStatus: EditProfileStatus.success,
          message: 'Berhasil load data',
          editProfileModel: r));
    });
  }
}
