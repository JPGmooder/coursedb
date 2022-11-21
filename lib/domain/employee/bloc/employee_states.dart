part of 'employee_bloc.dart';

@freezed
abstract class EmployeeState with _$EmployeeState {
  const factory EmployeeState.initial() = _$EmployeeInitialState;
  const factory EmployeeState.loading() = _$EmployeeLoadingState;
  const factory EmployeeState.errored(String error) = _$EmployeeErroredState;
  const factory EmployeeState.courierReged(CourierModel courier) =
      _$EmployeeCourierRegistredState;
  const factory EmployeeState.ordersFounded(List<Map<String, dynamic>> orders) =
      _$EmployeeOrdersFoundedState; 
  const factory EmployeeState.currentOrderFound(List<Map<String, dynamic>> orders) =
      _$EmployeecurrentOrderFoundedState; 
   const factory EmployeeState.orderStatusChanged(int orderId, OrderStatusName status) =
      _$EmployeeOrdersStatusChangedState; 
   const factory EmployeeState.personalDataFindedState(UserPersonalDataModel personalData) =
      _$EmployeePersonalDataFindedState; 
  const factory EmployeeState.timeRegistred(DateTime time) =
      _$EmployeeTimeRegistredState; 
}
