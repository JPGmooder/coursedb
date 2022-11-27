import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart';
import 'package:kursachdesktop/data/api/service/model/graphclient.dart';
part 'employees_states.dart';
part 'employees_cubit.freezed.dart';
part 'employees_repository.dart';
part 'employees_provider.dart';

class EmployeesCubit extends Cubit<EmployeesState> {
  EmployeesCubit() : super(EmployeesState.initial());

  Future<void> loadEmployees() async {
    var loadedEmployees = await EmployeesRepository.loadUsers();
    emit(EmployeesState.loaded(loadedEmployees));
  }

  Future<void> changeEmployees({
    required List<Map<String, dynamic>> editedEmployees,
    required List<Map<String, dynamic>> deletedEmployees,
  }) async {
    emit(const EmployeesState.loading());
    await EmployeesRepository().changeEmployees(
        deletedEmployees: deletedEmployees, editedEmployees: editedEmployees);
    emit(EmployeesState.updated());
  }

  Future<void> insertEmployees(
      {required List<Map<String, dynamic>> insertableEmployees}) async {
    emit(const EmployeesState.loading());
    await EmployeesRepository()
        .insertEmployees(addedEmployees: insertableEmployees);
    emit(EmployeesState.updated());
  }
}
