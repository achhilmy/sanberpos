part of 'authentication_cubit.dart';

enum LoginStatus { initial, loading, succes, failure }

class AuthenticationState {
  final LoginStatus loginStatus;
  final SignInModel signInModel;
  final String message;
  const AuthenticationState({
    this.loginStatus = LoginStatus.initial,
    this.signInModel = const SignInModel(),
    this.message = "",
  });

  List<Object> get props {
    return [
      loginStatus,
      message,
      signInModel,
    ];
  }

  AuthenticationState copyWith({
    LoginStatus? loginStatus,
    SignInModel? signInModel,
    String? message,
  }) {
    return AuthenticationState(
        signInModel: signInModel ?? this.signInModel,
        loginStatus: loginStatus ?? this.loginStatus,
        message: message ?? this.message);
  }
}
