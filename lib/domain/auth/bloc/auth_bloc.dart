import 'dart:developer';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/employee_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
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
          updatePersonalData: ((data, userLogin) async {
            emit(const AuthState.loading());
            var loadedResponse = await AuthRepository.changeUsersPersonalData(
                userLogin: userLogin, pdModel: data);
            emit(AuthState.pdUpdated(loadedResponse));
          }),
          addPersonalData:
              (name, lname, patronymic, birthday, mobileNumber) async {
            try {
              var userData = await AuthRepository.addPersonalData(
                  birthday: birthday,
                  lname: lname,
                  name: name,
                  patronymic: patronymic,
                  mobileNumber: mobileNumber);

              emit(AuthState.logedIn(
                  UserModel.get().login,
                  UserModel.get().password,
                  UserModel.get().email,
                  userData,
                  UserModel.get().addresses,
                  UserModel.get().organizationModel,
                  UserModel.get().courier,
                  UserModel.get().carts));
            } catch (e) {
              emit(AuthState.errored(e.toString()));
            }
          },
          findAddressUser: (login) async {
            try {
              var findedAddresses =
                  await AuthRepository.findAddressByUser(userID: login);
              emit(AuthState.addressesFinded(findedAddresses));
            } catch (e) {
              emit(AuthState.errored(e.toString()));
            }
          },
          logIn: (login, password) async {
            try {
              var userData = await AuthRepository.authUser(login, password);

              emit(AuthState.logedIn(
                  userData['login']!,
                  userData['password']!,
                  userData['email']!,
                  userData['pd'],
                  userData['addresses'],
                  userData['company'],
                  userData['employee'],
                  userData['carts']));
              if (userData['pd'] != null &&
                  (userData['addresses'] != null ||
                      userData['addresses'].isNotEmpty)) {
                // await SupaBaseClient.client.auth.signInWithPassword(
                //     password: userData['password']!, email: userData['email']);
                var prefs = await SharedPreferences.getInstance();
                await prefs.clear();
                await prefs.setString("login", login);
                await prefs.setString("password", password);
              }
            } catch (e) {
              emit(AuthState.errored(e.toString()));
            }
          },
          addAddress: (model) async {
            try {
              var addedAddress = await AuthRepository.addAddressData(
                  model: model, userID: UserModel.get().login);
              await SupaBaseClient.client.auth.signInWithPassword(
                  password: UserModel.get().password,
                  email: UserModel.get().email);
              emit(AuthState.addressAdded(addedAddress));
            } catch (e) {
              emit(AuthState.errored(e.toString()));
            }
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
