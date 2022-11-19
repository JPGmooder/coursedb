import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:rive/rive.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

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
  @override
  void initState() {
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
                "${getProductCount()} ед. товара на сумму ${getProductPrice()} руб.",
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
                    "Время публикации: ${DateFormat("d MMMM, в H:mm", "RU_ru").format(widget.cart.creationDate)}",
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              )
            ],
          ),
          expanded: Column(children: [
            YandexMap()
            Row(
              children: [
                Text(
                  "Время публикации: ${DateFormat("d MMMM, в H:mm", "RU_ru").format(widget.cart.creationDate)}",
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

class timeInfoWidget extends StatefulWidget {
  const timeInfoWidget({
    Key? key,
    required DrivingSessionResult? drivingRoute,
    required BicycleSessionResult? bicycleRoute,
  })  : _drivingRoute = drivingRoute,
        _bicycleRoute = bicycleRoute,
        super(key: key);

  final DrivingSessionResult? _drivingRoute;
  final BicycleSessionResult? _bicycleRoute;

  @override
  State<timeInfoWidget> createState() => _timeInfoWidgetState();
}

class _timeInfoWidgetState extends State<timeInfoWidget> {
  StateMachineController? _scontroller;

  void _onInit(Artboard art) {
    var ctrl = StateMachineController.fromArtboard(art, 'State Machine 1')
        as StateMachineController;
    ctrl.isActive = false;
    art.addController(ctrl);
    setState(() {
      _scontroller = ctrl;
      _scontroller!.isActive = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget._drivingRoute == null) CircularProgressIndicator(),
        if (widget._drivingRoute != null && widget._drivingRoute!.error == null)
          Expanded(
            child: Card(
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
        if (widget._bicycleRoute == null) CircularProgressIndicator(),
        if (widget._bicycleRoute != null && widget._bicycleRoute!.error == null)
          Expanded(
            child: Card(
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
                          child: RiveAnimation.asset(
                              "lib/assets/anim/delivery.riv",
                              fit: BoxFit.fitHeight,
                              controllers:
                                  _scontroller == null ? [] : [_scontroller!],
                              onInit: _onInit),
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
          )
      ],
    );
  }
}
