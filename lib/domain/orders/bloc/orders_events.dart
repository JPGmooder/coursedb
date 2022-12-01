part of 'orders_bloc.dart';

@freezed
abstract class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.loadUserOrders({required String userLogin}) =
      _$LoadUsersOrdersEvent;
  const factory OrdersEvent.loadCouriersOrders({required String userLogin}) =
      _$LoadCouriersOrdersEvent;
  const factory OrdersEvent.loadOrdersProducts({required List<int> ids}) =
      _$LoadOrdersProductsEvent;
}
