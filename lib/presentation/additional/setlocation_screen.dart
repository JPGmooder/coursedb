import 'dart:async';

import 'package:bottom_drawer/bottom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/home/navigator_screen.dart';
import 'package:kursach/presentation/home/profile/partnership/partnership_reg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/place_searcher/bloc/place_searcher_bloc.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

enum LocationPickerMode { userAddress, orgAddress, etc }

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({Key? key, required this.currentMode})
      : super(key: key);
  static const String path = "auth/setlocationscreen";
  final LocationPickerMode currentMode;
  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  late TextEditingController _locationController;
  late StreamController<String> _textStreamController;
  late StreamSubscription _textStreamSub;
  late StreamController<Point> _pointController;
  late StreamSubscription _pointSub;
  late List<AddressModel> currentAddresses;
  late BottomDrawerController _drawerController;
  YandexMapController? _mapController;
  AddressModel? pickedLocation;
  final _myListKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    _pointController = StreamController<Point>();
    _pointSub = _pointController.stream
        .distinct()
        .debounceTime(Duration(milliseconds: 100))
        .listen((event) {
      context.read<PlaceSearcherBloc>().add(PlaceSearcherEvents.searchByCoord(
          event.longitude, event.latitude, false));
    });
    _drawerController = BottomDrawerController();
    currentAddresses = [];
    _locationController = TextEditingController();
    _textStreamController = StreamController<String>();
    _locationController.addListener(() {
      _textStreamController.add(_locationController.text);
    });
    _textStreamSub = _textStreamController.stream
        .distinct()
        .debounceTime(const Duration(milliseconds: 300))
        .listen((event) {
      if (event.isNotEmpty) {
        context
            .read<PlaceSearcherBloc>()
            .add(PlaceSearcherEvents.search(event));
      }
    });
    super.initState();
    GeolocatorPlatform.instance.checkPermission().then((value) {
      if (value == LocationPermission.denied) {
        GeolocatorPlatform.instance.requestPermission().then((value) {
          if (value != LocationPermission.deniedForever &&
              value != LocationPermission.denied) {
            GeolocatorPlatform.instance.getCurrentPosition().then((value) {
              context.read<PlaceSearcherBloc>().add(
                  PlaceSearcherEvents.searchByCoord(
                      value.longitude, value.latitude, true));
            });
          }
        });
      } else if (value != LocationPermission.deniedForever) {
        GeolocatorPlatform.instance.getCurrentPosition().then((value) {
          context.read<PlaceSearcherBloc>().add(
              PlaceSearcherEvents.searchByCoord(
                  value.longitude, value.latitude, true));
        });
      }
    });
  }

  @override
  void dispose() {
    _textStreamSub.cancel();
    _textStreamController.close();
    _locationController.dispose();
    _pointSub.cancel();
    _pointController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          YandexMap(
            modelsEnabled: true,
            onMapTap: (point) {
              _pointController.add(point);
              if (_mapController != null) {
                _mapController!.moveCamera(
                    CameraUpdate.newCameraPosition(
                        CameraPosition(target: point, zoom: 17)),
                    animation: MapAnimation());
              }
            },
            onMapCreated: (controller) {
              _mapController = controller;

              _mapController!
                  .toggleUserLayer(visible: true, autoZoomEnabled: true);
              if (pickedLocation != null) {
                setState(() {
                  _mapController!.moveCamera(
                      CameraUpdate.newCameraPosition(CameraPosition(
                        zoom: 17,
                        target: Point(
                          latitude: pickedLocation!.lat!,
                          longitude: pickedLocation!.lon!,
                        ),
                      )),
                      animation: MapAnimation());
                });
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: BottomDrawer(
                cornerRadius: 30,
                followTheBody: true,
                controller: _drawerController,
                headerHeight: 50,
                drawerHeight: MediaQuery.of(context).size.height * 0.5,
                header: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, top: 10, right: 20),
                      child: InkWell(
                        onTap: () => _drawerController.open(),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.currentMode ==
                                        LocationPickerMode.userAddress
                                    ? "Товары рядом с вами"
                                    : "Адрес вашего предприятия",
                                style: Theme.of(context).textTheme.titleMedium,
                                textScaleFactor: 1.1,
                              ),
                              Text(
                                "Выберите адрес, откуда будут доставлять курьеры вашу продукцию.",
                                style: Theme.of(context).textTheme.labelMedium,
                                textScaleFactor: 1.2,
                              ),
                            ]),
                      ),
                    ),
                    Positioned(
                        right: 5,
                        top: 5,
                        child: BlocListener<AuthBloc, AuthState>(
                          listener: (context, state) {
                            state.maybeWhen(
                                orElse: () => null,
                                addressAdded: (address) {
                                  UserModel.get().addresses = [address];
                                  Navigator.of(context)
                                      .pushNamed(NavigatorScreen.route);
                                });
                          },
                          child: GradientMask(
                            size: 20,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            child: IconButton(
                              iconSize: 30,
                              onPressed: widget.currentMode ==
                                      LocationPickerMode.userAddress
                                  ? () {
                                      context.read<AuthBloc>().add(
                                          AuthEvent.addAddress(
                                              pickedLocation!));
                                      print(pickedLocation);
                                    }
                                  : () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(PartnerShipReg.route, arguments: pickedLocation);
                                    },
                              color: Colors.white,
                              icon: Icon(Icons.check),
                            ),
                          ),
                        ))
                  ],
                ),
                body: BottomBody(
                    setLocationOnMap: (model, isAnim) {
                      setState(() {
                        pickedLocation = model;
                      });
                      if (_mapController != null && isAnim) {
                        _mapController!.moveCamera(
                            CameraUpdate.newCameraPosition(
                              CameraPosition(
                                  zoom: 17,
                                  target: Point(
                                      latitude: pickedLocation!.lat!,
                                      longitude: pickedLocation!.lon!)),
                            ),
                            animation: MapAnimation());
                      }
                    },
                    pickedLocation: pickedLocation,
                    locationController: _locationController,
                    currentAddresses: currentAddresses,
                    myListKey: _myListKey)),
          ),
        ]),
      ),
    );
  }
}

class BottomBody extends StatelessWidget {
  const BottomBody(
      {Key? key,
      required TextEditingController locationController,
      required this.currentAddresses,
      required GlobalKey<AnimatedListState> myListKey,
      required this.setLocationOnMap,
      this.pickedLocation})
      : _locationController = locationController,
        _myListKey = myListKey,
        super(key: key);

  final TextEditingController _locationController;
  final List<AddressModel> currentAddresses;
  final GlobalKey<AnimatedListState> _myListKey;
  final void Function(AddressModel model, bool isAnimated) setLocationOnMap;
  final AddressModel? pickedLocation;
  @override
  Widget build(BuildContext context) {
    if (currentAddresses.isNotEmpty && pickedLocation != null) {
      currentAddresses[0] = pickedLocation!;
    }
    return Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: GradientMask(
                size: 200,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                child: TextFormField(
                  controller: _locationController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: "Введите ваш первый адрес",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      isDense: false,
                      labelStyle: Theme.of(context).textTheme.labelMedium),
                ),
              ),
            ),
            Expanded(
              child: BlocListener<PlaceSearcherBloc, PlaceSearcherStates>(
                  listener: (context, state) {
                    state.maybeWhen(
                        orElse: () => null,
                        searched: (addresses) {
                          if (currentAddresses.length > 2) {
                            currentAddresses.removeRange(
                                1, currentAddresses.length);
                          }
                          currentAddresses.addAll(addresses);
                          for (int i = 1;
                              i < currentAddresses.length - 1;
                              i++) {
                            _myListKey.currentState!
                                .insertItem(i, duration: Duration(seconds: 1));
                          }
                        },
                        searchedCoords: (address, isInitial) {
                          setLocationOnMap(address, isInitial);

                          currentAddresses.add(address);
                          _myListKey.currentState!
                              .insertItem(0, duration: Duration(seconds: 1));
                        });
                  },
                  child: AnimatedList(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      key: _myListKey,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (ctx, index, anim) {
                        return FadeTransition(
                          opacity: anim.drive(Tween(begin: 0, end: 1)),
                          child: SlideTransition(
                            position: CurvedAnimation(
                                    curve: Curves.easeOut, parent: anim)
                                .drive(Tween(
                                    begin: Offset(-1, 0), end: Offset(0, 0))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  LocationWidget(
                                    onTap: () {
                                      if (pickedLocation !=
                                          currentAddresses[index]) {
                                        setLocationOnMap(
                                            currentAddresses[index], true);
                                      }
                                    },
                                    isCurrent: index == 0,
                                    addressModel: currentAddresses[index],
                                  ),
                                  Divider(
                                    height: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
            )
          ],
        ));
  }
}

class LocationWidget extends StatelessWidget {
  const LocationWidget(
      {Key? key,
      required this.addressModel,
      this.isCurrent = false,
      required this.onTap})
      : super(key: key);
  final AddressModel addressModel;
  final bool isCurrent;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: GradientMask(
        size: 250,
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        child: ListTile(
          onTap: onTap,
          minLeadingWidth: 0,
          leading: isCurrent
              ? Icon(
                  Icons.location_on,
                  color: Colors.white,
                )
              : Icon(Icons.location_on_outlined),
          title: Text(
            addressModel.name != null
                ? addressModel.name!
                : addressModel.toString(),
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
          ),
          subtitle: addressModel.name != null
              ? Text(
                  addressModel.toString(),
                  style: Theme.of(context).textTheme.labelMedium,
                )
              : null,
        ),
      ),
    );
  }
}
