import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_pos/blocs/profile_cubit/profile_cubit.dart';
import 'package:sanber_pos/ui/widgets/widget.dart';

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController photoUrlController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  void onSubmit() {
    context.read<ProfileCubit>().editProfileData(
        fullName: fullNameController.text,
        address: addressController.text,
        phoneNumber: phoneNumberController.text,
        photoUrl: photoUrlController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SafeArea(
        child: BlocListener<ProfileCubit, ProfileState>(
          listener: (context, state) {
            print(state.editProfileStatus);
            if (state.editProfileStatus == EditProfileStatus.loading) {
              CardLoading();
            } else if (state.editProfileStatus == EditProfileStatus.success) {
              Navigator.pop(context);
              // context.read<ProfileCubit>().profileData();
            } else {
              Text('Gagal');
            }
          },
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                NormalInputWidget(
                  title: "Masukan Nama",
                  hintText: "Masukan Nama",
                  textController: fullNameController,
                ),
                NormalInputWidget(
                  title: "Masukan Alama",
                  hintText: "Masukan Alamat",
                  textController: addressController,
                ),
                NormalInputWidget(
                  title: "Input photo",
                  hintText: "Input photo url",
                  textController: photoUrlController,
                ),
                NormalInputWidget(
                  title: "Input phone number",
                  hintText: "Input Phone number",
                  textController: phoneNumberController,
                ),
                ButtonLoading(
                  title: "Submit",
                  onPressed: () {
                    onSubmit();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
