part of 'orders_bloc.dart';
@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState.initial() =
      _$OrdersInitialState;
    const factory OrdersState.loading() =
      _$OrdersLoadingState;
      const factory OrdersState.errored(String error) =
      _$OrdersErroredState;
      const factory OrdersState.usersOrdersLoaded(List<Map<String, dynamic>> orders) =
      _$OrdersUsersOrdersLoadedState;
       const factory OrdersState.ordersProductsLoaded({required List<ProductModel> products, required OrganizationModel organization}) =
      _$OrdersUsersOrdersProductsLoadedState;
}
