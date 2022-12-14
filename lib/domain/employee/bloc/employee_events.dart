part of 'employee_bloc.dart';

@freezed
abstract class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.register(
      {required String userLogin,
      required double deliveryAreaDiametr}) = _$EmployeeRegisterEvent;
  const factory EmployeeEvent.findNearestOrders(
      {required String userLogin,
      required double currentLat,
      required double currentLon}) = _$EmployeeFindNearestOrdersEvent;
   const factory EmployeeEvent.changeCourierDistance(
      {required String userLogin,
      required double distance}) = _$EmployeeChangeCourierDistanceEvent;
  const factory EmployeeEvent.changeOrderStatus(
          {required String userLogin,
          required int orderId,
          required OrderStatusName orderStatusName}) =
      _$EmployeeChangeOrderStatusEvent;
  const factory EmployeeEvent.regCourierPlacement(
      {required int orderId,
      required double lat,
      required double lon,
      required bool isCompanyPassed}) = _$EmployeeRegCourierPlacementEvent;
   const factory EmployeeEvent.findPersonalDataByAddress(
      {required int addressId}) = _$EmployeeFindPDbyAddressEvent;
   const factory EmployeeEvent.loadStatisticEvent(
      {required String userLogin}) = _$EmployeeLoadStatisticEvent;
}
