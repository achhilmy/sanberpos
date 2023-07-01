part of 'authentication_cubit.dart';

enum LoginStatus { initial, loading, succes, failure }

enum RegisterStatus { initial, loading, succes, failure }

class AuthenticationState {
  final RegisterStatus registerStatus;
  final RegisterModel registerModel;
  final LoginStatus loginStatus;
  final SignInModel signInModel;
  final String message;
  final bool isLoading;
  const AuthenticationState(
      {this.registerStatus = RegisterStatus.initial,
      this.registerModel = const RegisterModel(),
      this.loginStatus = LoginStatus.initial,
      this.signInModel = const SignInModel(),
      this.message = "",
      this.isLoading = false});

  List<Object> get props {
    return [
      registerStatus,
      registerModel,
      loginStatus,
      message,
      signInModel,
      isLoading
    ];
  }

  AuthenticationState copyWith(
      {RegisterStatus? registerStatus,
      RegisterModel? registerModel,
      LoginStatus? loginStatus,
      SignInModel? signInModel,
      String? message,
      bool? isLoading}) {
    return AuthenticationState(
        registerStatus: registerStatus ?? this.registerStatus,
        registerModel: registerModel ?? this.registerModel,
        signInModel: signInModel ?? this.signInModel,
        loginStatus: loginStatus ?? this.loginStatus,
        message: message ?? this.message,
        isLoading: isLoading ?? this.isLoading);
  }
}
