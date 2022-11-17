part of 'employee_bloc.dart';

@freezed
abstract class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.register({required String userLogin, required double deliveryAreaDiametr}) =
      _$EmployeeRegisterEvent;
  const factory EmployeeEvent.findNearestOrders({required String userLogin, required double currentLat, required double currentLon}) =
      _$EmployeeFindNearestOrdersEvent;
}
