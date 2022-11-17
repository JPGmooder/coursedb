import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/model/employee_model.dart';

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
        register: (userLogin, deliveryArea) async {
          emit(const EmployeeState.loading());
          var loadedCourier = await EmployeeRepository.regNewCourier(
              userLogin: userLogin, deliverAreaDiametr: deliveryArea);
          emit(EmployeeState.courierReged(loadedCourier));
        },
      );
    });
  }
}
