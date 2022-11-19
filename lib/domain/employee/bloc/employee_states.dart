part of 'employee_bloc.dart';

@freezed
abstract class EmployeeState with _$EmployeeState {
  const factory EmployeeState.initial() = _$EmployeeInitialState;
  const factory EmployeeState.loading() = _$EmployeeLoadingState;
  const factory EmployeeState.errored(String error) = _$EmployeeErroredState;
  const factory EmployeeState.courierReged(CourierModel courier) =
      _$EmployeeCourierRegistredState;
  const factory EmployeeState.ordersFounded(List<Map<String, dynamic>> orders) =
      _$EmployeeOrdersFoundedState; //* Keys: company for CompanyModel, order for OrderModel, products for List<ProductModel>
}
