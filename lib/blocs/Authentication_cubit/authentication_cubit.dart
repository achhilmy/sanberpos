// ignore: depend_on_referenced_packages
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:sanber_pos/data/sign_in_model/sign_in_model.dart';

import 'package:sanber_pos/services/services.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(const AuthenticationState());
  final AuthServices authServices = AuthServices();
  void signIn({required email, required password}) async {
    emit(state.copyWith(loginStatus: LoginStatus.loading));

    final res = await authServices.signIn(email: email, password: password);

    print("from cubit ${res.toString()}");
    res.fold((l) {
      emit(state.copyWith(
          message: state.message, loginStatus: LoginStatus.failure));
      emit(state.copyWith(
        loginStatus: LoginStatus.initial,
      ));
    }, (r) {
      emit(state.copyWith(
          signInModel: r,
          loginStatus: LoginStatus.succes,
          message: "berhasil login"));
    });
  }
}
