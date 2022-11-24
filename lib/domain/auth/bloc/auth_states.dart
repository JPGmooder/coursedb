part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.logedOut() = _$AuthLogedOutState;
  const factory AuthState.errored(String error) = _$AuthErroredState;
  const factory AuthState.loading() = _$AuthLoadingState;
  const factory AuthState.logedIn(
      String login,
      String password,
      String email,
      UserPersonalDataModel? data,
      String post) = _$AuthLogedInState;
  const factory AuthState.initial() = _$AuthInitialState;
}
