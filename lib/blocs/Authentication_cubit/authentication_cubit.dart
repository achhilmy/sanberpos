// ignore: depend_on_referenced_packages
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:sanber_pos/data/register_model.dart/register_model.dart';
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

  void signUp({name, email, password, confirmPassword}) async {
    emit(state.copyWith(isLoading: true, loginStatus: LoginStatus.loading));

    final res = await authServices.register(
      email: email,
      name: name,
      confirmPassword: confirmPassword,
      password: password,
    );

    print("from cubit ${res.toString()}");
    res.fold((l) {
      emit(state.copyWith(
          isLoading: false,
          message: state.message,
          registerStatus: RegisterStatus.failure));
      emit(state.copyWith(
        registerStatus: RegisterStatus.initial,
      ));
    }, (r) {
      emit(state.copyWith(
          isLoading: false,
          registerModel: r,
          registerStatus: RegisterStatus.succes,
          message: "berhasil register"));
    });
  }
}
