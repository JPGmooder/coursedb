import 'package:flutter/material.dart';
import 'package:kursachdesktop/domain/admin/exporter/exporter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () => Exporter.exportDump(),
      child: Text("Создать дамп!"),
    ));
  }
}