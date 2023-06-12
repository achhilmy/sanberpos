part of 'authentication_cubit.dart';

enum LoginStatus { initial, loading, succes, failure }

class AuthenticationState {
  final LoginStatus? loginStatus;
  final SignInModel? signInModel;
  final String? message;
  const AuthenticationState({this.loginStatus, this.signInModel, this.message});

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
