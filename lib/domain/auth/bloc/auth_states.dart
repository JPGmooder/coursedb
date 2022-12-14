part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.logedOut() = _$AuthLogedOutState;
  const factory AuthState.errored({required String error, String? hint}) =
      _$AuthErroredState;
  const factory AuthState.loading() = _$AuthLoadingState;
  const factory AuthState.logedIn(
      String login,
      String password,
      String email,
      UserPersonalDataModel? data,
      List<AddressModel>? addresses,
      OrganizationModel? company,
      CourierModel? courier,
      List<CartModel> carts) = _$AuthLogedInState;
  const factory AuthState.signedUp(
      String login, String password, String email) = _$AuthSignedUpState;
  const factory AuthState.addressAdded(AddressModel addressModel) =
      _$AuthAddressAddedState;
  const factory AuthState.addressesFinded(List<AddressModel> addressModel) =
      _$AuthAddressesFindedState;
  const factory AuthState.pdUpdated(UserPersonalDataModel personalData) =
      _$AuthUserPDUpdatedState;

  const factory AuthState.initial() = _$AuthInitialState;
}
