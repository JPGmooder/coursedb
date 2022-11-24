part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn(String login, String password, bool isRemember) =
      _$AuthLogInEvent;
}
