import 'dart:developer';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart';
import 'package:kursachdesktop/data/api/service/model/graphclient.dart';
import 'package:kursachdesktop/domain/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_events.dart';
part '../../../data/api/service/auth_provider.dart';
part '../../../data/repository/auth_repository.dart';
part 'auth_states.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      emit(const AuthState.loading());
      await event.maybeWhen(
        orElse: () => null,
        logIn: (login, password, isRemember) async {
          try {
            var userData = await AuthRepository.authUser(login, password);
            emit(AuthState.logedIn(userData['login']!, userData['password']!,
                userData['email']!, userData['pd'], userData['postName']));

            // await SupaBaseClient.client.auth.signInWithPassword(
            //     password: userData['password']!, email: userData['email']);
            if (isRemember) {
              var prefs = await SharedPreferences.getInstance();
              await prefs.clear();
              await prefs.setString("login", login);
              await prefs.setString("password", password);
            }
          } catch (e) {
            emit(AuthState.errored(e.toString()));
          }
        },
      );
    });
  }
}
