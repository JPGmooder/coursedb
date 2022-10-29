part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn(String login, String password) =
      _$AuthLogInEvent;
    const factory AuthEvent.findAddressUser(String login) =
      _$AuthFindAddressByUserEvent;
  const factory AuthEvent.addAddress(AddressModel addressModel) =
      _$AuthAddAddressEvent;
  const factory AuthEvent.regNew(String login, String password, String email) =
      _$AuthRegNewEvent;
  const factory AuthEvent.addPersonalData(
      {required String name, required String lname, String? patronymic, required DateTime birthday, required String mobileNumber}) 
      = _$AutAddPersonalDataEvent;
}
