part of 'employee_bloc.dart';

@freezed
abstract class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.register({required String userLogin, required double deliveryAreaDiametr}) =
      _$EmployeeRegisterEvent;
}
