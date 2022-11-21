import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kursach/domain/employee/bloc/employee_bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/employee_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/home/profile/courier/courier_order_widget.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourierMainOrderScreen extends StatefulWidget {
  CourierMainOrderScreen(
      {Key? key, this.clientMarkl, this.companyMark, this.courierMark})
      : super(key: key);
  PlacemarkMapObject? courierMark, companyMark, clientMarkl;
  @override
  State<CourierMainOrderScreen> createState() => _CourierMainOrderScreenState();
}

class _CourierMainOrderScreenState extends State<CourierMainOrderScreen> {
  late CurrentCouriersOrder currentOrder;
  DrivingSessionResult? _drivingRoute;
  BicycleSessionResult? _bicycleRoute;
  PlacemarkMapObject? _courierMark, _companyMark, _clientMarkl;
  UserPersonalDataModel? clientData;
  late StreamSubscription<Position> placementListener;
  late bool isPassedCompany;
  late bool isInCompany;
  late bool isAboutClient;

  @override
  void initState() {
    currentOrder = UserModel.get().courier!.currentOrder!;
    isPassedCompany = false; //TODO при получении тут динамика.
    super.initState();

    Future.delayed(Duration.zero, () {
      if (widget.clientMarkl == null &&
          widget.companyMark == null &&
          widget.clientMarkl == null) {
        var args =
            ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
        setState(() {
          _courierMark = args['courier'];
          _companyMark = args['org'];
          _clientMarkl = args['client'];
        });
      } else {
        _companyMark = widget.companyMark;
        _courierMark = widget.courierMark;
        _clientMarkl = widget.clientMarkl;
      }

      context.read<EmployeeBloc>().add(EmployeeEvent.regCourierPlacement(
          isCompanyPassed: false,
          orderId: currentOrder.order.idOrder,
          lat: _courierMark!.point.latitude,
          lon: _courierMark!.point.longitude));

      YandexDriving.requestRoutes(
          points: loadRequestPoints(
              currentLat: _courierMark!.point.latitude,
              currentLon: _courierMark!.point.longitude,
              fromAddress: _companyMark!.point,
              toAddress: _clientMarkl!.point),
          drivingOptions: const DrivingOptions(
            avoidTolls: true,
            avoidPoorConditions: true,
            avoidUnpaved: true,
          )).result.then((value) => setState(() {
            _drivingRoute = value;
          }));
      YandexBicycle.requestRoutes(
              points: loadRequestPoints(
                  currentLat: _courierMark!.point.latitude,
                  currentLon: _courierMark!.point.longitude,
                  fromAddress: _companyMark!.point,
                  toAddress: _clientMarkl!.point),
              bicycleVehicleType: BicycleVehicleType.bicycle)
          .result
          .then((value) => setState(() {
                _bicycleRoute = value;
              }));

      placementListener = Geolocator.getPositionStream(
              locationSettings: LocationSettings(distanceFilter: 5))
          .listen((event) async {
        setState(() {
          if (Geolocator.distanceBetween(event.latitude, event.longitude,
                  _companyMark!.point.latitude, _companyMark!.point.longitude) <
              10) {
            setState(() {
              isPassedCompany = true;
            });
          }

          _courierMark = _courierMark!.copyWith(
              point:
                  Point(latitude: event.latitude, longitude: event.longitude));
          context.read<EmployeeBloc>().add(EmployeeEvent.regCourierPlacement(
              isCompanyPassed: isPassedCompany,
              orderId: currentOrder.order.idOrder,
              lat: event.latitude,
              lon: event.longitude));
        });

        _drivingRoute = await YandexDriving.requestRoutes(
            points: loadRequestPoints(
                currentLat: event.latitude,
                currentLon: event.longitude,
                fromAddress: _companyMark!.point,
                toAddress: _clientMarkl!.point),
            drivingOptions: const DrivingOptions(
              avoidTolls: true,
              avoidPoorConditions: true,
              avoidUnpaved: true,
            )).result;
        _bicycleRoute = await YandexBicycle.requestRoutes(
                points: loadRequestPoints(
                    currentLat: event.latitude,
                    currentLon: event.longitude,
                    fromAddress: _companyMark!.point,
                    toAddress: _clientMarkl!.point),
                bicycleVehicleType: BicycleVehicleType.bicycle)
            .result;
      });
    });
  }

  List<RequestPoint> loadRequestPoints(
          {required double currentLat,
          required double currentLon,
          required Point fromAddress,
          required Point toAddress}) =>
      [
        if (!isPassedCompany)
          RequestPoint(
              point: Point(
                latitude: currentLat,
                longitude: currentLon,
              ),
              requestPointType: RequestPointType.wayPoint),
        RequestPoint(
            point: fromAddress,
            requestPointType: isPassedCompany
                ? RequestPointType.wayPoint
                : RequestPointType.viaPoint),
        RequestPoint(
            point: toAddress, requestPointType: RequestPointType.wayPoint)
      ];

  @override
  void dispose() {
    placementListener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              pinned: false,
              floating: true,
              backgroundColor: Theme.of(context).colorScheme.surface,
              title: Text(
                "Активный заказ №${currentOrder.order.idOrder}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SliverPinnedHeader(
              child: orderTimer(),
            ),
            SliverToBoxAdapter(
              child: _clientMarkl == null ||
                      _drivingRoute == null ||
                      _bicycleRoute == null
                  ? CircularProgressIndicator()
                  : ExpandedCouriersOrder(
                      isMainOrder: true,
                      order: currentOrder.order,
                      organization: currentOrder.organization,
                      products: currentOrder.products,
                      bicycleRoute: _bicycleRoute,
                      clientMark: _clientMarkl!,
                      companyMark: _clientMarkl!,
                      courierMark: _courierMark!,
                      drivingRoute: _drivingRoute,
                      addressModel: currentOrder.addressModel,
                      cart: currentOrder.cart,
                    ),
            )
          ],
        ),
      ),
    );
  }
}

class orderTimer extends StatefulWidget {
  const orderTimer({Key? key, this.defaultValue}) : super(key: key);
  final DateTime? defaultValue;
  @override
  State<orderTimer> createState() => _orderTimerState();
}

class _orderTimerState extends State<orderTimer> {
  StopWatchTimer? timer;
  StreamSubscription<EmployeeState>? sub;
  late int count;
  @override
  void initState() {
    if (widget.defaultValue != null) {
      var diff = DateTime.now().difference(widget.defaultValue!);
      setState(() {
        timer = StopWatchTimer(
          mode: StopWatchMode.countUp,
        );
        timer!.setPresetTime(mSec: diff.inMilliseconds);
      });
    }
    if (timer == null) {
      sub = BlocProvider.of<EmployeeBloc>(context).stream.listen((event) {
        event.maybeWhen(
            orElse: () => null,
            timeRegistred: (time) {
              var diff = DateTime.now().difference(time.toLocal());
              setState(() {
                timer = StopWatchTimer(
                  mode: StopWatchMode.countUp,
                );
                timer!.setPresetTime(mSec: diff.inMilliseconds);
              });
              sub!.cancel();
            });
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    sub?.cancel();
    timer?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (timer?.isRunning == false) {
      timer!.onStartTimer();
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Времени прошло:",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                timer == null
                    ? CircularProgressIndicator()
                    : Card(
                        color: Colors.red,
                        shape: StadiumBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              StreamBuilder<int>(
                                  stream: timer!.rawTime,
                                  builder: (context, snap) {
                                    return snap.data == null
                                        ? CircularProgressIndicator()
                                        : Text(
                                            StopWatchTimer.getDisplayTime(
                                                snap.data!,
                                                milliSecond: false),
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(color: Colors.white),
                                            textScaleFactor: 1.2,
                                          );
                                  }),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
                                child: Icon(
                                  Icons.watch_later_rounded,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget widget;

  PersistentHeader({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      height: 56.0,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.white,
        elevation: 5.0,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 56.0;

  @override
  double get minExtent => 56.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
