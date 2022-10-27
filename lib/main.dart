import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kursach/internal/app.dart';
import 'package:location/location.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
void main() {
  AndroidYandexMap.useAndroidViewSurface = false;

  runApp(MyApp());
}
