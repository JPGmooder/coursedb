import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart';
import 'package:kursachdesktop/data/api/service/model/graphclient.dart';
part 'users_states.dart';
part 'users_cubit.freezed.dart';
part 'users_repository.dart';
part 'users_provider.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersState.initial());

  Future<void> loadUsers() async {
    var loadedUsers = await UsersRepository().loadUsers();
    emit(UsersState.loaded(loadedUsers));
  }

  Future<void> changeUsers(
      {required List<Map<String, dynamic>> editedUsers,
      required List<Map<String, dynamic>> deletedUsers,
      required List<Map<String, dynamic>> addedUsers}) async {
    emit(const UsersState.loading());
    var loadedUsers = await UsersRepository().changeUsers(
        addedUsers: addedUsers,
        deletedUsers: deletedUsers,
        editedUsers: editedUsers);
    emit(UsersState.usersManaged(loadedUsers));
  }
}
