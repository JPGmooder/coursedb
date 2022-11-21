import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/orders/bloc/orders_bloc.dart';
import 'package:kursach/presentation/home/profile/courier/courier_main_order_screen.dart';
import 'package:kursach/presentation/home/profile/courier/courier_order_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MyOrdersDetailedScreen extends StatefulWidget {
  MyOrdersDetailedScreen(
      {Key? key,
      required this.cart,
      required this.order,
      required this.organization,
      required this.products})
      : super(key: key);
  OrderModel order;
  OrganizationModel organization;
  List<ProductModel> products;
  CartModel cart;
  @override
  State<MyOrdersDetailedScreen> createState() => _MyOrdersDetailedScreenState();
}

class _MyOrdersDetailedScreenState extends State<MyOrdersDetailedScreen> {
  late StreamSubscription sub;
  DateTime? acceptTime;
  late StreamTransformer<QueryResult<Object?>, Map<String, dynamic>>
      _transformer;
  Point? courierPlacement;
  bool? isPassedCompany;
  UserPersonalDataModel? courierPersonalData;
  DrivingSessionResult? _drivingRoute;
  BicycleSessionResult? _bicycleRoute;
  bool isCarRoute = true;
  late List<MapObject> currentMapObjects;

  PlacemarkMapObject? _courierMark, _companyMark, _clientMarkl;
  @override
  void initState() {
    isPassedCompany = false;
    currentMapObjects = [];
    _transformer = StreamTransformer<QueryResult<Object?>,
        Map<String, dynamic>>.fromHandlers(handleData: (data, sink) {
      if (data.hasException) return null;
      var decodedData = (data.data!['courierplacement'] as List<Object?>)
          .cast<Map<String, dynamic>>()
          .first;
      DateTime _acceptTime = DateTime.parse(decodedData['accepttime']);
      Point _courierPlacement = Point(
          latitude: decodedData['latitude'],
          longitude: decodedData['longtitude']);
      OrderStatusName _orderStatusName =
          OrderStatusName.fromMap(decodedData['order']['orderstatus']);
      UserPersonalDataModel _courierPersonalData =
          UserPersonalDataModel.fromMap(
              decodedData['order']['employee']['user']['personaldatum']);
      sink.add({
        'time': _acceptTime,
        'point': _courierPlacement,
        'personal': _courierPersonalData,
        'status': _orderStatusName
      });
    });

    sub = OrdersProvider.listenToCourierPlacement(widget.order.idOrder)
        .transform(_transformer)
        .listen((event) {
      setState(() {
        courierPersonalData = event['personal'];
        courierPlacement = event['point'];
        widget.order.orderStatusName = event['status'];
        acceptTime ??= event['time'];
        var index = currentMapObjects.indexWhere(
            (element) => element.mapId == MapObjectId("courierMark"));
        if (index == -1) {
          currentMapObjects.add(PlacemarkMapObject(
            mapId: MapObjectId("courierMark"),
            point: Point(
                latitude: courierPlacement!.latitude,
                longitude: courierPlacement!.longitude),
          ));
        } else {
          currentMapObjects[index] = PlacemarkMapObject(
            mapId: MapObjectId("courierMark"),
            point: Point(
                latitude: courierPlacement!.latitude,
                longitude: courierPlacement!.longitude),
          );
        }
      });

      var curAddress = UserModel.get().addresses!.firstWhere(
          (element) => element.id_address == widget.order.addressId);

      var drivingResult = YandexDriving.requestRoutes(
          points: loadRequestPoints(
              currentLat: courierPlacement!.latitude,
              currentLon: courierPlacement!.longitude,
              fromAddress: Point(
                  latitude: widget.organization.addressModel.lat!,
                  longitude: widget.organization.addressModel.lon!),
              toAddress:
                  Point(latitude: curAddress.lat!, longitude: curAddress.lon!)),
          drivingOptions: const DrivingOptions(
            avoidTolls: true,
            avoidPoorConditions: true,
            avoidUnpaved: true,
          ));
      var byciclingResult = YandexBicycle.requestRoutes(
          points: loadRequestPoints(
              currentLat: courierPlacement!.latitude,
              currentLon: courierPlacement!.longitude,
              fromAddress: Point(
                  latitude: widget.organization.addressModel.lat!,
                  longitude: widget.organization.addressModel.lon!),
              toAddress:
                  Point(latitude: curAddress.lat!, longitude: curAddress.lon!)),
          bicycleVehicleType: BicycleVehicleType.bicycle);
      drivingResult.result.then((value) => setState(() {
            _drivingRoute = value;
            var index = currentMapObjects.indexWhere(
                (element) => element.mapId == MapObjectId("currentRoute"));
            if (index == -1) {
              currentMapObjects
                  .add(getRoute(_drivingRoute!.routes!.first.geometry));
            } else if (isCarRoute) {
              currentMapObjects[index] =
                  getRoute(_drivingRoute!.routes!.first.geometry);
            }
          }));
      byciclingResult.result.then((value) => setState(() {
            _bicycleRoute = value;
              var index = currentMapObjects.indexWhere(
                (element) => element.mapId == MapObjectId("currentRoute"));
             if (!isCarRoute) {
              currentMapObjects[index] =
                  getRoute(_bicycleRoute!.routes!.first.geometry);
            }
          }));
    });
    var curAddress = UserModel.get()
        .addresses!
        .firstWhere((element) => element.id_address == widget.order.addressId);
    _clientMarkl = PlacemarkMapObject(
      mapId: MapObjectId("clientMark"),
      point: Point(
        latitude: curAddress.lat!,
        longitude: curAddress.lon!,
      ),
    );
    _companyMark = PlacemarkMapObject(
      mapId: MapObjectId("companyMark"),
      point: Point(
          latitude: widget.organization.addressModel.lat!,
          longitude: widget.organization.addressModel.lon!),
    );
    currentMapObjects.addAll([_companyMark!, _clientMarkl!]);

    super.initState();
  }

  List<RequestPoint> loadRequestPoints(
          {required double currentLat,
          required double currentLon,
          required Point fromAddress,
          required Point toAddress}) =>
      [
        if (!isPassedCompany!)
          RequestPoint(
              point: Point(
                latitude: currentLat,
                longitude: currentLon,
              ),
              requestPointType: RequestPointType.wayPoint),
        RequestPoint(
            point: fromAddress,
            requestPointType: isPassedCompany!
                ? RequestPointType.wayPoint
                : RequestPointType.viaPoint),
        RequestPoint(
            point: toAddress, requestPointType: RequestPointType.wayPoint)
      ];

  PolylineMapObject getRoute(List<Point> points) => PolylineMapObject(
      mapId: MapObjectId("currentRoute"), polyline: Polyline(points: points));

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leadingWidth: 0,
              stretch: true,
              pinned: false,
              floating: true,
              backgroundColor: Theme.of(context).colorScheme.surface,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "Активный заказ №${widget.order.idOrder}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Статус заказа: ${widget.order.orderStatusName.name}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
            SliverPinnedHeader(
                child: acceptTime != null
                    ? orderTimer(
                        defaultValue: acceptTime,
                      )
                    : CircularProgressIndicator()),
            if (currentMapObjects.length < 3)
              SliverToBoxAdapter(child: CircularProgressIndicator())
            else
              SliverToBoxAdapter(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: YandexMap(
                        onMapCreated: (controller) => controller.moveCamera(
                            CameraUpdate.newCameraPosition(
                                CameraPosition(target: courierPlacement!)),
                            animation: MapAnimation()),
                        gestureRecognizers:
                            <Factory<OneSequenceGestureRecognizer>>[
                          Factory<OneSequenceGestureRecognizer>(
                            () => EagerGestureRecognizer(),
                          ),
                        ].toSet(),
                        mapObjects: currentMapObjects)),
              ),
            if (currentMapObjects.length < 3)
              SliverToBoxAdapter(child: CircularProgressIndicator())
            else
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: timeInfoWidget(
                      checkState: (isCarPicked) => setState(() {
                            isCarRoute = isCarPicked;
                            currentMapObjects.last = getRoute(isCarPicked
                                ? _drivingRoute!.routes!.first.geometry
                                : _bicycleRoute!.routes!.first.geometry);
                          }),
                      drivingRoute: _drivingRoute,
                      bicycleRoute: _bicycleRoute),
                ),
              ),
            SliverToBoxAdapter(
              child: CourierAdditional(
                  isClient: true,
                  orderModel: widget.order,
                  isPassed: false,
                  products: widget.products,
                  items: widget.cart.items,
                  organizationModel: widget.organization),
            )
          ],
        ),
      ),
    ));
  }
}
