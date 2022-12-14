import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/employee/bloc/employee_bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/employee_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/home/profile/courier/courier_main_order_screen.dart';
import 'package:kursach/presentation/home/profile/courier/courier_orders.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:kursach/presentation/outstanding/product/product_screen.dart';
import 'package:kursach/presentation/outstanding/product_card.dart';
import 'package:rive/rive.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class CourierOrder extends StatefulWidget {
  CourierOrder(
      {Key? key,
      required this.addressModel,
      required this.cart,
      required this.order,
      required this.currentLat,
      required this.currentLonl,
      required this.organization,
      required this.products})
      : super(key: key);
  final double currentLat;
  final double currentLonl;
  final AddressModel addressModel;
  final OrderModel order;
  final List<ProductModel> products;
  final OrganizationModel organization;
  final CartModel cart;
  @override
  State<CourierOrder> createState() => _CourierOrderState();
}

class _CourierOrderState extends State<CourierOrder> {
  DrivingSessionResult? _drivingRoute;
  BicycleSessionResult? _bicycleRoute;
  late PlacemarkMapObject _courierMark, _companyMark, _clientMarkl;
  @override
  void initState() {
    _courierMark = PlacemarkMapObject(
      mapId: MapObjectId("courierMark"),
      point: Point(
        latitude: widget.currentLat,
        longitude: widget.currentLonl,
      ),
    );

    _clientMarkl = PlacemarkMapObject(
      mapId: MapObjectId("clientMark"),
      point: Point(
        latitude: widget.addressModel.lat!,
        longitude: widget.addressModel.lon!,
      ),
    );

    _companyMark = PlacemarkMapObject(
      mapId: MapObjectId("companyMark"),
      point: Point(
          latitude: widget.organization.addressModel.lat!,
          longitude: widget.organization.addressModel.lon!),
    );
    var drivingResult = YandexDriving.requestRoutes(
        points: loadRequestPoints(
            currentLat: widget.currentLat,
            currentLon: widget.currentLonl,
            fromAddress: widget.organization.addressModel,
            toAddress: widget.addressModel),
        drivingOptions: const DrivingOptions(
          avoidTolls: true,
          avoidPoorConditions: true,
          avoidUnpaved: true,
        ));
    var byciclingResult = YandexBicycle.requestRoutes(
        points: loadRequestPoints(
            currentLat: widget.currentLat,
            currentLon: widget.currentLonl,
            fromAddress: widget.organization.addressModel,
            toAddress: widget.addressModel),
        bicycleVehicleType: BicycleVehicleType.bicycle);
    drivingResult.result.then((value) => setState(() {
          _drivingRoute = value;
        }));
    byciclingResult.result.then((value) => setState(() {
          _bicycleRoute = value;
        }));
    super.initState();
  }

  List<RequestPoint> loadRequestPoints(
          {required double currentLat,
          required double currentLon,
          required AddressModel fromAddress,
          required AddressModel toAddress}) =>
      [
        RequestPoint(
            point: Point(
              latitude: currentLat,
              longitude: currentLon,
            ),
            requestPointType: RequestPointType.wayPoint),
        RequestPoint(
            point: Point(
              latitude: fromAddress.lat!,
              longitude: fromAddress.lon!,
            ),
            requestPointType: RequestPointType.viaPoint),
        RequestPoint(
            point: Point(
              latitude: toAddress.lat!,
              longitude: toAddress.lon!,
            ),
            requestPointType: RequestPointType.wayPoint)
      ];

  int getProductCount() => widget.cart.items
      .map((e) => e.amount)
      .reduce((value, element) => value + element);
  String getProductPrice() => widget.products
      .map((e) => e.price)
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpandablePanel(
          header: Column(
            children: [
              Text(
                "${getProductCount()} ????. ???????????? ???? ?????????? ${getProductPrice()} ??????.",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          collapsed: Column(
            children: [
              timeInfoWidget(
                  drivingRoute: _drivingRoute, bicycleRoute: _bicycleRoute),
              Row(
                children: [
                  Text(
                    "?????????? ????????????????????: ${DateFormat("d MMMM, ?? H:mm", "RU_ru").format(widget.cart.creationDate)}",
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              )
            ],
          ),
          expanded: Column(children: [
            ExpandedCouriersOrder(
                addressModel: widget.addressModel,
                cart: widget.cart,
                order: widget.order,
                organization: widget.organization,
                products: widget.products,
                clientMark: _clientMarkl,
                companyMark: _companyMark,
                courierMark: _courierMark,
                bicycleRoute: _bicycleRoute,
                drivingRoute: _drivingRoute),
            Row(
              children: [
                Text(
                  "?????????? ????????????????????: ${DateFormat("d MMMM, ?? H:mm", "RU_ru").format(widget.cart.creationDate)}",
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class ExpandedCouriersOrder extends StatefulWidget {
  ExpandedCouriersOrder(
      {Key? key,
      this.isMainOrder = false,
      this.isPassed = false,
      required this.addressModel,
      required this.cart,
      required this.order,
      required this.organization,
      required this.products,
      required this.bicycleRoute,
      required this.clientMark,
      required this.companyMark,
      required this.courierMark,
      required this.drivingRoute})
      : super(key: key);
  PlacemarkMapObject courierMark;
  PlacemarkMapObject companyMark;
  PlacemarkMapObject clientMark;
  DrivingSessionResult? drivingRoute;
  BicycleSessionResult? bicycleRoute;
  bool isPassed;
  final AddressModel addressModel;
  final OrderModel order;
  final List<ProductModel> products;
  final OrganizationModel organization;
  final CartModel cart;
  final bool isMainOrder;
  @override
  State<ExpandedCouriersOrder> createState() => _ExpandedCouriersOrderState();
}

class _ExpandedCouriersOrderState extends State<ExpandedCouriersOrder> {
  late List<MapObject> currentMapObjects;
  @override
  void initState() {
    currentMapObjects = [
      getRoute(widget.drivingRoute!.routes!.first.geometry),
      widget.clientMark,
      widget.companyMark,
      widget.courierMark
    ];
    super.initState();
  }

  PolylineMapObject getRoute(List<Point> points) => PolylineMapObject(
      mapId: MapObjectId("currentRoute"), polyline: Polyline(points: points));

  int getProductCount() => widget.cart.items
      .map((e) => e.amount)
      .reduce((value, element) => value + element);
  String getProductPrice() => widget.products
      .map((e) => e.price)
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.order.idOrder,
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: YandexMap(
                  onMapCreated: (controller) => controller.moveCamera(
                      CameraUpdate.newCameraPosition(
                          CameraPosition(target: widget.courierMark.point)),
                      animation: MapAnimation()),
                  gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                    Factory<OneSequenceGestureRecognizer>(
                      () => EagerGestureRecognizer(),
                    ),
                  ].toSet(),
                  mapObjects: currentMapObjects)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: timeInfoWidget(
                checkState: (isCarPicked) => setState(() {
                      currentMapObjects[0] = getRoute(isCarPicked
                          ? widget.drivingRoute!.routes!.first.geometry
                          : widget.bicycleRoute!.routes!.first.geometry);
                    }),
                drivingRoute: widget.drivingRoute,
                bicycleRoute: widget.bicycleRoute),
          ),
          if (!widget.isMainOrder)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "???????????????????? ?????????????????? ???? '${widget.organization.companyName}', ???? ????????????: ${widget.organization.addressModel.toString()}, ?????????? ?? ???????????????????? ${getProductCount()} ????????????, ???? ?????????? ?????????? ${getProductPrice()} ??????. ???? ??????????: ${widget.addressModel.toString()}",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          if (!widget.isMainOrder)
            BlocConsumer<EmployeeBloc, EmployeeState>(
              listener: (ctx, state) {
                state.maybeWhen(
                    orElse: () => null,
                    orderStatusChanged: (orderId, status) {
                      if (status.step == OrderStep.delivered &&
                          UserModel.get()
                                  .courier!
                                  .currentOrder!
                                  .order
                                  .idOrder ==
                              orderId) {
                        UserModel.get().courier!.currentOrder = null;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => CourierOrdersScreen()));
                      } else if (UserModel.get().courier!.currentOrder ==
                              null &&
                          widget.order.idOrder == orderId) {
                        context.read<EmployeeBloc>().add(
                            EmployeeEvent.regCourierPlacement(
                                isCompanyPassed: false,
                                orderId: orderId,
                                lat: widget.courierMark.point.latitude,
                                lon: widget.courierMark.point.longitude));
                        UserModel.get().courier!.currentOrder =
                            CurrentCouriersOrder(
                                addressModel: widget.addressModel,
                                order: widget.order,
                                products: widget.products,
                                organization: widget.organization,
                                cart: widget.cart);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                settings:
                                    RouteSettings(name: "marks", arguments: {
                                  'courier': widget.courierMark,
                                  'client': widget.clientMark,
                                  'org': widget.companyMark
                                }),
                                builder: (ctx) => CourierMainOrderScreen()));
                      }
                    });
              },
              builder: (context, state) {
                return state.maybeWhen(
                    loading: () => CircularProgressIndicator(),
                    orElse: () => GradientMask(
                          size: 200,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10),
                            child: NeumorphicButton(
                                style: NeumorphicStyle(color: Colors.white54),
                                onPressed: () => context
                                    .read<EmployeeBloc>()
                                    .add(EmployeeEvent.changeOrderStatus(
                                        userLogin: UserModel.get().login,
                                        orderId: widget.order.idOrder,
                                        orderStatusName: OrderStatusName(
                                            name: "?? ????????",
                                            step: OrderStep.delivery))),
                                child: Center(
                                  child: Text(
                                    "??????????????",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                        ));
              },
            ),
          if (widget.isMainOrder)
            CourierAdditional(
              orderModel: widget.order,
              isPassed: widget.isPassed,
              items: widget.cart.items,
              organizationModel: widget.organization,
              products: widget.products,
            )
        ],
      ),
    );
  }
}

class CourierAdditional extends StatefulWidget {
  CourierAdditional(
      {Key? key,
      this.isClient = false,
      required this.orderModel,
      required this.isPassed,
      required this.products,
      required this.items,
      required this.organizationModel})
      : super(key: key);
  bool isClient;
  bool isPassed;
  OrderModel orderModel;
  List<ProductModel> products;
  List<CartItemModel> items;
  OrganizationModel organizationModel;
  @override
  State<CourierAdditional> createState() => _CourierAdditionalState();
}

class _CourierAdditionalState extends State<CourierAdditional> {
  late StreamSubscription<EmployeeState> pdSub;
  UserPersonalDataModel? clientData;

  @override
  void initState() {
    if (!widget.isClient) {
      context.read<EmployeeBloc>().add(EmployeeEvent.findPersonalDataByAddress(
          addressId: UserModel.get().courier!.currentOrder!.order.addressId));
      pdSub = BlocProvider.of<EmployeeBloc>(context).stream.listen((state) {
        state.maybeWhen(
            orElse: () => null,
            personalDataFindedState: (pd) => setState(() {
                  clientData = pd;
                }));
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    pdSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "?????????????????????? ????????????????",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "${widget.organizationModel.companyTypeName} '${widget.organizationModel.companyName}'",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      "?????????? ??????????????????????: ${widget.organizationModel.addressModel.toString()}",
                      style: Theme.of(context).textTheme.labelMedium,
                      textScaleFactor: 1.2,
                    ),
                  ],
                ))),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "???????????????? ?????????????????????? ?? ????????????????",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.products.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => showBottomSheet(
                          context: context,
                          builder: (ctx) => ProductScreen(
                              currentProduct: widget.products[index],
                              currentOrg: widget.organizationModel)),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      widget.products[index].photoAlbum.first,
                                )),
                            Text(
                              widget.products[index].name,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "??????-????: ",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  widget.items
                                      .firstWhere((element) =>
                                          element.productId ==
                                          widget.products[index].productId)
                                      .amount
                                      .toString(),
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                )
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (clientData != null)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "???????????????????? ?? ??????????????????",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: NeumorphicButton(
                      onPressed: () => launchUrl(
                          Uri.parse("tel://${clientData!.mobileNumber}"),
                          mode: LaunchMode.externalApplication),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  clientData!.mobileNumber,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                  textScaleFactor: 1.3,
                                ),
                              ),
                            ),
                            GradientMask(
                                size: 25,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                child: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "?????????? ????????????????????: ${UserModel.get().courier!.currentOrder!.addressModel.toString()}",
                      style: Theme.of(context).textTheme.labelMedium,
                      textScaleFactor: 1.25,
                    ),
                  )),
                  OrderStatusPicker(
                    order: widget.orderModel,
                    isPassed: widget.isPassed,
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}

class OrderStatusPicker extends StatefulWidget {
  OrderStatusPicker(
      {Key? key,
      required this.isPassed,
      required this.order,
      this.defaultValue})
      : super(key: key);
  OrderStatusName? defaultValue;
  OrderModel order;
  bool isPassed;
  @override
  State<OrderStatusPicker> createState() => _OrderStatusPickerState();
}

class _OrderStatusPickerState extends State<OrderStatusPicker> {
  late OrderStatusName currentValue;
  @override
  void initState() {
    currentValue = widget.defaultValue ??
        OrderStatusName(
            name: "?????????????????? ???????????????? ????????????????????.", step: OrderStep.ready);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            "?????????????????? ?????????????? ????????????",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          ...List.generate(6, (index) {
            void Function(OrderStatusName?)? onChanged;
            late OrderStatusName currentStatus;
            switch (index) {
              case 0:
                currentStatus = OrderStatusName(
                    name: "?????????????????? ???????????????? ????????????????????.",
                    step: OrderStep.ready);
                break;
              case 1:
                currentStatus = OrderStatusName(
                    name: "???? ???????? ?? ????????????????.", step: OrderStep.delivery);
                break;
              case 2:
                currentStatus = OrderStatusName(
                    name: "???????????? ????????????", step: OrderStep.building);
                break;
              case 3:
                currentStatus = OrderStatusName(
                    name: "???? ???????? ?? ??????????????????", step: OrderStep.delivery);
                onChanged = widget.isPassed
                    ? (value) => setState(() {
                          currentValue = value!;
                          context.read<EmployeeBloc>().add(
                              EmployeeEvent.changeOrderStatus(
                                  userLogin: UserModel.get().login,
                                  orderId: widget.order.idOrder,
                                  orderStatusName: currentStatus));
                        })
                    : null;

                break;
              case 4:
                currentStatus = OrderStatusName(
                    name: "???????????????? ???????????? ??????????????????", step: OrderStep.waiting);
                break;
              case 5:
                currentStatus = OrderStatusName(
                    name: "????????????????????.", step: OrderStep.delivered);
                onChanged = (value) {
                  bool isCanceled = false;
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            content: Text(
                              "???? ?????????? ?????????????????? ??????????? ?????????? ?????? ????????????????, ?? ???????? ???????????? ?????????? ??????????????????.",
                            ),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    isCanceled = true;
                                    Navigator.pop(ctx);
                                  },
                                  child: Text("????????????")),
                              ElevatedButton(
                                  onPressed: () {
                                    isCanceled = false;
                                    context.read<EmployeeBloc>().add(
                                        EmployeeEvent.changeOrderStatus(
                                            userLogin: UserModel.get().login,
                                            orderId: widget.order.idOrder,
                                            orderStatusName: currentStatus));
                                    Navigator.pop(ctx);
                                  },
                                  child: Text("????, ?????????? ??????????????????")),
                            ],
                          )).then((_) => isCanceled
                      ? null
                      : setState(() {
                          currentValue = value!;
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => CourierOrdersScreen()));
                        }));
                };

                break;
              default:
            }

            if (!(index == 3 || index == 5 || index == 0) &&
                onChanged == null) {
              onChanged = (value) => setState(() {
                    currentValue = value!;
                    context.read<EmployeeBloc>().add(
                        EmployeeEvent.changeOrderStatus(
                            userLogin: UserModel.get().login,
                            orderId: widget.order.idOrder,
                            orderStatusName: currentStatus));
                  });
            }

            return RadioListTile<OrderStatusName>(
              groupValue: currentValue,
              value: currentStatus,
              onChanged: onChanged,
              activeColor: AppsColors.accentColor,
              selectedTileColor: AppsColors.primaryColor,
              title: Text(
                currentStatus.name,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            );
          })
        ],
      ),
    );
  }
}

class timeInfoWidget extends StatefulWidget {
  const timeInfoWidget(
      {Key? key,
      required DrivingSessionResult? drivingRoute,
      required BicycleSessionResult? bicycleRoute,
      this.checkState})
      : _drivingRoute = drivingRoute,
        _bicycleRoute = bicycleRoute,
        super(key: key);
  final void Function(bool isCarPicked)? checkState;
  final DrivingSessionResult? _drivingRoute;
  final BicycleSessionResult? _bicycleRoute;

  @override
  State<timeInfoWidget> createState() => _timeInfoWidgetState();
}

class _timeInfoWidgetState extends State<timeInfoWidget> {
  late bool isCarPicked;
  late bool isBicyclePicked;

  @override
  void initState() {
    isCarPicked = true;
    isBicyclePicked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget._drivingRoute == null) CircularProgressIndicator(),
        if (widget._drivingRoute != null && widget._drivingRoute!.error == null)
          Expanded(
            child: GestureDetector(
              onTap: widget.checkState != null
                  ? () => setState(() {
                        isCarPicked = !isCarPicked;
                        isBicyclePicked = !isBicyclePicked;
                        widget.checkState!(isCarPicked);
                      })
                  : null,
              child: Card(
                color: widget.checkState != null && isCarPicked
                    ? AppsColors.accentColor
                    : Theme.of(context).colorScheme.surface,
                child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: 30,
                          child: Transform.scale(
                            scale: 1.7,
                            child: Icon(Icons.drive_eta),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: GradientMask(
                                            size: 35,
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            child: Icon(
                                              FontAwesomeIcons.clock,
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Text(
                                            widget._drivingRoute!.routes!.first
                                                .metadata.weight.time.text,
                                            maxLines: 2,
                                            softWrap: true,
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GradientMask(
                                          size: 35,
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          child: Icon(
                                            FontAwesomeIcons.road,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(widget._drivingRoute!.routes!.first
                                            .metadata.weight.distance.text)
                                      ]),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ),
        if (widget._bicycleRoute == null) CircularProgressIndicator(),
        if (widget._bicycleRoute != null && widget._bicycleRoute!.error == null)
          Expanded(
            child: GestureDetector(
              onTap: widget.checkState != null
                  ? () => setState(() {
                        isCarPicked = !isCarPicked;
                        isBicyclePicked = !isBicyclePicked;
                        widget.checkState!(isCarPicked);
                      })
                  : null,
              child: Card(
                color: widget.checkState != null && isBicyclePicked
                    ? AppsColors.accentColor
                    : Theme.of(context).colorScheme.surface,
                child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: 30,
                          child: Icon(FontAwesomeIcons.bicycle),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: GradientMask(
                                            size: 35,
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            child: Icon(
                                              FontAwesomeIcons.clock,
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Text(
                                            widget._bicycleRoute!.routes!.first
                                                .weight.time.text,
                                            maxLines: 2,
                                            softWrap: true,
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GradientMask(
                                          size: 35,
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          child: Icon(
                                            FontAwesomeIcons.road,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(widget._bicycleRoute!.routes!.first
                                            .weight.distance.text)
                                      ]),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ),
          )
      ],
    );
  }
}
