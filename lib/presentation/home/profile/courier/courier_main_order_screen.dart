import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kursach/domain/employee/bloc/employee_bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/employee_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/home/profile/courier/courier_order_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  late StreamSubscription<Position> placementListener;

  @override
  void initState() {
    currentOrder = UserModel.get().courier!.currentOrder!;
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
          _courierMark = _courierMark!.copyWith(
              point:
                  Point(latitude: event.latitude, longitude: event.longitude));
          context.read<EmployeeBloc>().add(EmployeeEvent.regCourierPlacement(
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
        RequestPoint(
            point: Point(
              latitude: currentLat,
              longitude: currentLon,
            ),
            requestPointType: RequestPointType.wayPoint),
        RequestPoint(
            point: fromAddress, requestPointType: RequestPointType.viaPoint),
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
                child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Времени прошло: ",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SlideCountdown(
                      separatorType: SeparatorType.title,
                      durationTitle: DurationTitle.ruShort(),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.timer,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      duration: Duration(days: 1),
                      infinityCountUp: true,
                      shouldShowMinutes: (duration) => duration.inSeconds > 60,
                      shouldShowHours: (duration) => duration.inMinutes > 60,
                      countUp: true,
                    )
                  ],
                ),
              ),
            )),
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
