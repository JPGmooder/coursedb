import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart';
import 'package:kursachdesktop/data/api/service/model/graphclient.dart';
part 'courier_states.dart';
part 'courier_cubit.freezed.dart';
part 'courier_repository.dart';
part 'courier_provider.dart';

class CourierCubit extends Cubit<CourierState> {
  CourierCubit() : super(CourierState.initial());

  Future<void> loadCouriers() async {
    var loadedEmployees = await EmployeesRepository.loadUsers();
    emit(CourierState.loaded(loadedEmployees));
  }

  Future<void> changeCourier({
    required List<Map<String, dynamic>> editedCouriers,
  }) async {
    emit(const CourierState.loading());
    await EmployeesRepository().changeCouriers(editedEmployees: editedCouriers);
    emit(CourierState.updated());
  }
}
