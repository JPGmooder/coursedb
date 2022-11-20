import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/employee_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/orders/bloc/orders_bloc.dart';
import 'package:kursach/domain/product/bloc/product_bloc.dart';
import 'package:yandex_geocoder/yandex_geocoder.dart';

part "employee_events.dart";
part "employee_states.dart";
part '../../../data/api/service/employee_provider.dart';
part '../../../data/repository/employee_repository.dart';
part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(EmployeeState.initial()) {
    on<EmployeeEvent>((event, emit) async {
      await event.maybeWhen(
          orElse: () => null,
          changeOrderStatus: (userLogin, orderId, orderStatusName) async {
            emit(EmployeeState.loading());
            var loadedStatusInfo = await EmployeeRepository.changeOrderStatus(
                userLogin: userLogin,
                orderId: orderId,
                statusName: orderStatusName.name);
            emit(EmployeeState.orderStatusChanged(
                loadedStatusInfo.keys.first, loadedStatusInfo.values.first));
          },
          regCourierPlacement: (orderId, lat, lon, isCompanyPassed) async {
            await EmployeeRepository.regCourierPlacement(
                orderId: orderId,
                lat: lat,
                lon: lon,
                isCompanyPassed: isCompanyPassed);
          },
          findNearestOrders: (userLogin, currentLat, currentLon) async {
            var loadedInfo = await EmployeeRepository.searchCourierOrders(
                userLogin: userLogin,
                latitude: currentLat,
                longtitude: currentLon);
            emit(EmployeeState.ordersFounded(loadedInfo));
          },
          register: (userLogin, deliveryArea) async {
            emit(const EmployeeState.loading());
            var loadedCourier = await EmployeeRepository.regNewCourier(
                userLogin: userLogin, deliverAreaDiametr: deliveryArea);
            emit(EmployeeState.courierReged(loadedCourier));
          },
          findPersonalDataByAddress: (addressId) async {
            var loadedCourier = await EmployeeRepository.findPersonalDataByPK(
                addressPK: addressId);
            emit(EmployeeState.personalDataFindedState(loadedCourier));
          });
    });
  }
}
