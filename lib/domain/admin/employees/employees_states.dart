part of 'employees_cubit.dart';

@freezed
class EmployeesState with _$EmployeesState {
  const factory EmployeesState.loaded(List<Map<String, dynamic>> employees) =
      _$EmployeesLoadedState;
  const factory EmployeesState.errored(String error) =
      _$EmployeesErroredState;
  const factory EmployeesState.loading() =
      _$EmployeesLoadingState;
  const factory EmployeesState.updated() =
      _$EmployeesUpdatedState;
  const factory EmployeesState.initial() =
      _$EmployeesInitialState;
}
