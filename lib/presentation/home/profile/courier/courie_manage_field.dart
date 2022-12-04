import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/employee/bloc/employee_bloc.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/home/navigator_screen.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class CourierFieldManage extends StatefulWidget {
  CourierFieldManage({Key? key, this.isReg = false}) : super(key: key);
  bool isReg;
  @override
  State<CourierFieldManage> createState() => _CourierFieldManageState();
}

class _CourierFieldManageState extends State<CourierFieldManage> {
  late num deliverSliderValue;
  Point? currentLoc;
  YandexMapController? _controller;
  late StreamSubscription<Position> currentPositionSub;
  late List<MapObject<CircleMapObject>> currentzone;
  @override
  void initState() {
    GeolocatorPlatform.instance.checkPermission();
    currentzone = [];
    currentPositionSub = Geolocator.getPositionStream(
            locationSettings: LocationSettings(distanceFilter: 5))
        .listen((event) {
      moveCameraToPosition(event);
    });
    deliverSliderValue = 3750;
    if (UserModel.get().courier != null) {
      deliverSliderValue = UserModel.get().courier!.deliverField;
    }
    super.initState();
  }

  void moveCameraToPosition(Position event) {
    if (_controller != null) {
      setState(() {
        currentLoc =
            Point(latitude: event.latitude, longitude: event.longitude);
        _controller!.moveCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: currentLoc!,
              ),
            ),
            animation: MapAnimation());
        currentzone = [
          CircleMapObject(
              fillColor: AppsColors.accentColor.withOpacity(0.5),
              strokeColor: AppsColors.primaryColor,
              mapId: MapObjectId("0"),
              circle: Circle(
                  radius: deliverSliderValue.toDouble() / 2,
                  center: currentLoc!)),
        ];
      });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    currentPositionSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          "Настройка зоны видимости",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: YandexMap(
                    gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                      Factory<OneSequenceGestureRecognizer>(
                        () => EagerGestureRecognizer(),
                      ),
                    ].toSet(),
                    mapObjects: currentzone,
                    onMapCreated: ((controller) {
                      setState(() {
                        _controller = controller;

                        _controller!
                            .toggleUserLayer(
                                visible: true, autoZoomEnabled: false)
                            .then((_) =>
                                Geolocator.getCurrentPosition().then((value) {
                                  moveCameraToPosition(value);
                                }));
                      });
                    }),
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            children: [
                              GradientMask(
                                size: 350,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                child: SfSlider(
                                    activeColor: Colors.white,
                                    value: deliverSliderValue,
                                    max: 10000,
                                    min: 1000,
                                    enableTooltip: true,
                                    tooltipTextFormatterCallback:
                                        (actualValue, formattedText) {
                                      var returningValue =
                                          ((actualValue / 1000) as num);
                                      return returningValue is int
                                          ? "$returningValue км."
                                          : "${returningValue.toStringAsFixed(2)} км.";
                                    },
                                    onChanged: (value) => setState(() {
                                          deliverSliderValue = value;
                                          if (currentLoc != null) {
                                            currentzone = [
                                              CircleMapObject(
                                                  fillColor: AppsColors
                                                      .accentColor
                                                      .withOpacity(0.5),
                                                  strokeColor:
                                                      AppsColors.primaryColor,
                                                  mapId: MapObjectId("0"),
                                                  circle: Circle(
                                                      radius: deliverSliderValue
                                                              .toDouble() /
                                                          2,
                                                      center: currentLoc!)),
                                            ];
                                          }
                                        })),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "С помощью ползунка установите диаметр поступаемых заказов. Учтите, что минимальная зона получения заказов составляет 1 километр, а максимальная - 10 километров",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
              child: BlocConsumer<EmployeeBloc, EmployeeState>(
                listener: (context, state) => state.maybeWhen(
                    orElse: () => null,
                    distanceChanged: (distance) =>
                        UserModel.get().courier!.deliverField = distance,
                    courierReged: (courier) {
                      UserModel.get().regNewCourier(courier);
                      Navigator.popUntil(
                          context,
                          (route) =>
                              route.settings.name != NavigatorScreen.route);
                    }),
                builder: (context, state) {
                  return state.maybeWhen(
                      loading: () => CircularProgressIndicator(),
                      courierReged: (courier) {
                        UserModel.get().courier = courier;
                        Navigator.pop(context, true);
                        return Container();
                      },
                      orElse: () => GradientMask(
                            size: 200,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            child: NeumorphicButton(
                                style: NeumorphicStyle(color: Colors.white54),
                                onPressed: () => UserModel.get().courier == null
                                    ? context.read<EmployeeBloc>().add(
                                        EmployeeEvent.register(
                                            userLogin: UserModel.get().login,
                                            deliveryAreaDiametr:
                                                deliverSliderValue.toDouble()))
                                    : context.read<EmployeeBloc>().add(
                                        EmployeeEvent.changeCourierDistance(
                                            userLogin: UserModel.get().login,
                                            distance:
                                                deliverSliderValue.toDouble())),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      UserModel.get().courier == null
                                          ? "Зарегестрироваться"
                                          : "Принять",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                          ));
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
