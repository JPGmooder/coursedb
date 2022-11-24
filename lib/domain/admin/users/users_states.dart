part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.loaded(List<Map<String, dynamic>> users) =
      _$UsersLoadedState;
  const factory UsersState.initial() =
      _$UsersInitialState;
  const factory UsersState.userAdded(List<Map<String, dynamic>> user) =
      _$UsersUserAddedState;
  const factory UsersState.userUpdated(List<Map<String, dynamic>> user) =
      _$UsersUserUpdatedState;
  const factory UsersState.userDeleted(List<String> userLogin) =
      _$UsersUserDeletedState;
}
