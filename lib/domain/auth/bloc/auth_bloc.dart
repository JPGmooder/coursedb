import 'dart:developer';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/data/mapper/errormapper.dart';
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
            try {
              emit(const AuthState.loading());
              var loadedResponse = await AuthRepository.changeUsersPersonalData(
                  userLogin: userLogin, pdModel: data);
              emit(AuthState.pdUpdated(loadedResponse));
            } catch (e) {
              var currentException =
                  ErrorMapper.getReadableException(e as OperationException);
              emit(AuthState.errored(
                  error: currentException['message']!,
                  hint: currentException['hint']));
            }
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
              var currentException =
                  ErrorMapper.getReadableException(e as OperationException);
              emit(AuthState.errored(
                  error: currentException['message']!,
                  hint: currentException['hint']));
            }
          },
          findAddressUser: (login) async {
            try {
              var findedAddresses =
                  await AuthRepository.findAddressByUser(userID: login);
              emit(AuthState.addressesFinded(findedAddresses));
            } catch (e) {
              var currentException =
                  ErrorMapper.getReadableException(e as OperationException);
              emit(AuthState.errored(
                  error: currentException['message']!,
                  hint: currentException['hint']));
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
              var currentException =
                  ErrorMapper.getReadableException(e as OperationException);
              emit(AuthState.errored(
                  error: currentException['message']!,
                  hint: currentException['hint']));
            }
          },
          addAddress: (model) async {
            try {
              var addedAddress = await AuthRepository.addAddressData(
                  model: model, userID: UserModel.get().login);
              emit(AuthState.addressAdded(addedAddress));
            } catch (e) {
              var aboba = e;
              var currentException =
                  ErrorMapper.getReadableException(e as OperationException);
              emit(AuthState.errored(
                  error: currentException['message']!,
                  hint: currentException['hint']));
            }
          },
          regNew: (login, password, email) async {
            try {
              var userData =
                  await AuthRepository.regUser(login, password, email);

              emit(AuthState.signedUp(userData['login']!, userData['password']!,
                  userData['email']!));
            } catch (e) {
              var currentException =
                  ErrorMapper.getReadableException(e as OperationException);
              emit(AuthState.errored(
                  error: currentException['message']!,
                  hint: currentException['hint']));
            }
          });
    });
  }
}
