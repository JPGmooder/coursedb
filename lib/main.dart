import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kursach/internal/app.dart';
import 'package:location/location.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

final supabaseUrl = 'https://xomxmkboeuoupjkirjnh.supabase.co';
final supabaseKey = String.fromEnvironment('bqcccZS4hECsxy2T');

void main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);

  AndroidYandexMap.useAndroidViewSurface = false;
  initializeDateFormatting('ru_RU', null).then((value) => runApp(MyApp()));
}
