import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kursach/domain/employee/bloc/employee_bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/employee_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/home/profile/courier/courier_order_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;
import 'dart:isolate';
import 'dart:math';
import 'dart:ui';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';

class CourierMainOrderScreen extends StatefulWidget {
  CourierMainOrderScreen({Key? key}) : super(key: key);

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
      var args =
          ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
      setState(() {
        _courierMark = args['courier'];
        _companyMark = args['org'];
        _clientMarkl = args['client'];
      });

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
              child: orderTimer(
                  drivingRoute: _drivingRoute, bicycleRoute: _bicycleRoute),
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
  const orderTimer({
    Key? key,
    required DrivingSessionResult? drivingRoute,
    required BicycleSessionResult? bicycleRoute,
  })  : _drivingRoute = drivingRoute,
        _bicycleRoute = bicycleRoute,
        super(key: key);

  final DrivingSessionResult? _drivingRoute;
  final BicycleSessionResult? _bicycleRoute;

  @override
  State<orderTimer> createState() => _orderTimerState();
}

class _orderTimerState extends State<orderTimer> {
  ReceivePort port = ReceivePort();
  SharedPreferences? prefs;
  int _counter = 0;
  static SendPort? uiSendPort;

  @pragma('vm:entry-point')
  static Future<void> callback() async {
    developer.log('Alarm fired!');
    final prefs = await SharedPreferences.getInstance();
    final currentCount = prefs.getInt("timer") ?? 0;
    await prefs.setInt("timer", currentCount + 1);
    uiSendPort ??= IsolateNameServer.lookupPortByName("timer");
    uiSendPort?.send(null);
  }

  Future<void> _incrementCounter() async {
    await prefs?.reload();

    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    _counter = 0;
    AndroidAlarmManager.periodic(Duration(seconds: 1), 0, callback);
//! ОСТАНОВИЛся ТУТ НИЧО НЕ РАБОТАЕТ
    SharedPreferences.getInstance().then((value) {
      prefs = value;

      if (prefs!.containsKey("timer")) {
        setState(() {
          _counter += prefs!.getInt("timer")!;
        });
      }
    });
    port.listen((_) async => await _incrementCounter());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Времени прошло: ${_counter}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                // SlideCountdown(
                //   separatorType: SeparatorType.title,
                //   durationTitle: DurationTitle.ruShort(),
                //   suffixIcon: Padding(
                //     padding: const EdgeInsets.only(left: 8.0),
                //     child: Icon(
                //       Icons.timer,
                //       size: 15,
                //       color: Colors.white,
                //     ),
                //   ),
                //   duration: Duration(days: 1),
                //   infinityCountUp: true,
                //   shouldShowMinutes: (duration) => duration.inSeconds > 60,
                //   shouldShowHours: (duration) => duration.inMinutes > 60,
                //   countUp: true,
                // )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Ожидаемое время доставки: ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (widget._drivingRoute == null ||
                    widget._bicycleRoute == null)
                  CircularProgressIndicator()
                else
                  Card()
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
