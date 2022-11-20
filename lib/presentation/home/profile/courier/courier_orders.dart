import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/domain/employee/bloc/employee_bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/orders/bloc/orders_bloc.dart';
import 'package:kursach/presentation/home/profile/courier/courier_order_widget.dart';
import 'package:rxdart/rxdart.dart';

class CourierOrdersScreen extends StatefulWidget {
  CourierOrdersScreen({Key? key}) : super(key: key);

  @override
  State<CourierOrdersScreen> createState() => _CourierOrdersScreenState();
}

class _CourierOrdersScreenState extends State<CourierOrdersScreen> {
  List<Map<String, dynamic>>? currentOrders;
  late double currentLat;
  late double currentLon;
  StreamSubscription<QueryResult<Object?>>? ordersListener;
  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();
  late StreamSubscription<Position> geoListener;
  @override
  void initState() {
    if (currentOrders == null) {
      Geolocator.getCurrentPosition().then((value) {
        currentLat = value.latitude;
        currentLon = value.longitude;
        context.read<EmployeeBloc>().add(EmployeeEvent.findNearestOrders(
            userLogin: UserModel.get().login,
            currentLat: value.latitude,
            currentLon: value.longitude));
      });
    }
    geoListener = Geolocator.getPositionStream(
            locationSettings: LocationSettings(distanceFilter: 15))
        .listen((event) {
      currentLat = event.latitude;
      currentLon = event.longitude;
      EmployeeEvent.findNearestOrders(
          userLogin: UserModel.get().login,
          currentLat: event.latitude,
          currentLon: event.longitude);
    });
    super.initState();
  }

  @override
  void dispose() {
    ordersListener!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<EmployeeBloc, EmployeeState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () => null,
              ordersFounded: (orders) {
                if (currentOrders == null) {
                  currentOrders = [...orders];

                  ordersListener ??=
                      OrdersProvider.checkActualOrders().listen((event) {
                    print(event.toString());
                    if (event.data != null) {
                      var parsedData = event.data!["orders"];
                      if (parsedData
                          .where((element) => currentOrders!
                              .where((orderData) =>
                                  (orderData['order'] as OrderModel).idOrder !=
                                  element['id_order'])
                              .isNotEmpty)
                          .isNotEmpty) {
                        context.read<EmployeeBloc>().add(
                            EmployeeEvent.findNearestOrders(
                                userLogin: UserModel.get().login,
                                currentLat: currentLat,
                                currentLon: currentLon));
                      } else {
                        if (parsedData.first()['orderstatusname'] !=
                            "На рассмотрении") {
                          context.read<EmployeeBloc>().add(
                              EmployeeEvent.findNearestOrders(
                                  userLogin: UserModel.get().login,
                                  currentLat: currentLat,
                                  currentLon: currentLon));
                        }
                      }
                    }
                  });

                  for (int i = 0; i < currentOrders!.length; i++) {
                    _listKey.currentState!.insertItem(i);
                  }
                } else {
                  var curorders =
                      orders.map((e) => e['order'] as OrderModel).toList();

                  for (var oldOrder in currentOrders!) {
                    var index = curorders.indexWhere((element) =>
                        element.idOrder ==
                        (oldOrder['order'] as OrderModel).idOrder);
                    if (index != -1 &&
                        curorders[index].orderStatusName.step !=
                            OrderStep.searching) {
                      var indexRemover = currentOrders!.indexOf(oldOrder);
                      _listKey.currentState!.removeItem(
                          indexRemover,
                          (context, animation) => FadeTransition(
                              opacity: animation,
                              child: CourierOrder(
                                  currentLat: currentLat,
                                  currentLonl: currentLon,
                                  addressModel: currentOrders![indexRemover]
                                      ['address'] as AddressModel,
                                  cart: currentOrders![indexRemover]['cart']
                                      as CartModel,
                                  order: currentOrders![indexRemover]['order']
                                      as OrderModel,
                                  organization: currentOrders![indexRemover]
                                      ['company'] as OrganizationModel,
                                  products: currentOrders![indexRemover]
                                      ['products'] as List<ProductModel>)));
                      currentOrders!.removeAt(indexRemover);
                    }
                  }

                  for (var newOrder in curorders) {
                    var index = currentOrders!.indexWhere((element) =>
                        (element['order'] as OrderModel).idOrder ==
                        newOrder.idOrder);
                    if (index == -1) {
                      currentOrders!.add(orders.firstWhere((element) =>
                          (element['order'] as OrderModel).idOrder ==
                          newOrder.idOrder));
                      _listKey.currentState!.insertItem(
                        currentOrders!.length - 1,
                      );
                    }
                  }
                }
              });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverAnimatedList(
                  key: _listKey,
                  initialItemCount: currentOrders?.length ?? 0,
                  itemBuilder: (ctx, index, anim) {
                    return FadeTransition(
                      opacity: anim,
                      child: CourierOrder(
                          currentLat: currentLat,
                          currentLonl: currentLon,
                          addressModel:
                              currentOrders![index]['address'] as AddressModel,
                          cart: currentOrders![index]['cart'] as CartModel,
                          order: currentOrders![index]['order'] as OrderModel,
                          organization: currentOrders![index]['company']
                              as OrganizationModel,
                          products: currentOrders![index]['products']
                              as List<ProductModel>),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
