part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.loaded(List<Map<String, dynamic>> users) =
      _$UsersLoadedState;
  const factory UsersState.initial() =
      _$UsersInitialState;
  const factory UsersState.loading() =
      _$UsersLoadingState;
  const factory UsersState.usersManaged(Map<String, dynamic> users) =
      _$UsersManagedState;
}
