import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/cart/bloc/cart_bloc.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
part 'orders_events.dart';
part 'orders_states.dart';
part '../../../data/api/service/orders_provider.dart';
part '../../../data/repository/orders_repository.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc() : super(const OrdersState.initial()) {
    on<OrdersEvent>((event, emit) async {
      await event.maybeWhen(
          orElse: () => null,
          loadOrdersProducts: (ids) async {
            var loadedInfo =
                await OrdersRepository.loadOrdersProducts(ids: ids);
            emit(OrdersState.ordersProductsLoaded(
                products: loadedInfo['products'],
                organization: loadedInfo['company']));
          },
          loadCouriersOrders: (courierLogin) async {
            emit(const OrdersState.loading());
            var loadedOrders = await OrdersRepository.loadCouriesOrders(
                userLogin: courierLogin);
            emit(OrdersState.couriersOrdersLoaded(loadedOrders));
          },
          loadUserOrders: (userLogin) async {
            emit(const OrdersState.loading());
            var loadedOrders =
                await OrdersRepository.loadUsersOrders(userLogin: userLogin);
            emit(OrdersState.usersOrdersLoaded(loadedOrders));
          });
    });
  }
}
