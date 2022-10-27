import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/user_model.dart';
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
          addPersonalData:
              (name, lname, patronymic, birthday, mobileNumber) async {
            try {
              var userData = await AuthRepository.addPersonalData(
                  birthday: birthday,
                  lname: lname,
                  name: name,
                  patronymic: patronymic,
                  mobileNumber: mobileNumber);
              emit(AuthState.logedIn(userData['login']!, userData['password']!,
                  userData['email']!, userData['pd']));
            } catch (e) {
              emit(AuthState.errored(e.toString()));
            }
          },
          logIn: (login, password) async {
            try {
              var userData = await AuthRepository.authUser(login, password);
              emit(AuthState.logedIn(userData['login']!, userData['password']!,
                  userData['email']!, userData['pd']));
            } catch (e) {
              emit(AuthState.errored(e.toString()));
            }
          },
          addAddress: (model) async {
            var addedAddress = await AuthRepository.addAddressData(
                model: model, userID: "JPGmooder");
          },
          regNew: (login, password, email) async {
            try {
              var userData =
                  await AuthRepository.regUser(login, password, email);
              emit(AuthState.signedUp(userData['login']!, userData['password']!,
                  userData['email']!));
            } catch (e) {
              emit(AuthState.errored(e.toString()));
            }
          });
    });
  }
}
