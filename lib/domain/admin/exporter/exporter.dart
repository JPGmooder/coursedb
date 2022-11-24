import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as plutoExport;

class Exporter {
  static void printToPdfAndShareOrSave(
      PlutoGridStateManager state, String title, String creator) async {
    final themeData = plutoExport.ThemeData.withFont(
      base: plutoExport.Font.ttf(
        await rootBundle.load('lib/assets/fonts/OpenSans-Regular.ttf'),
      ),
      bold: plutoExport.Font.ttf(
        await rootBundle.load('lib/assets/fonts/OpenSans-Bold.ttf'),
      ),
    );

    var plutoGridPdfExport = plutoExport.PlutoGridDefaultPdfExport(
      title: title,
      creator: creator,
      format: plutoExport.PdfPageFormat.a4.landscape,
      themeData: themeData,
    );
    var data = await plutoGridPdfExport.export(state);
    var path = await FilePicker.platform.saveFile(
        dialogTitle: "Выберите путь экспорта файла.",
        allowedExtensions: ['pdf']);
    var file = File(path! + '.pdf');
    await file.create(recursive: true);
    await file.writeAsBytes(data);
  }

  static void exportToCsv(PlutoGridStateManager state, String title) async {
    var exported =
        const Utf8Encoder().convert(plutoExport.PlutoGridExport.exportCSV(
      state,
    ));

    var path = await FilePicker.platform.saveFile(
        dialogTitle: "Выберите путь экспорта файла.",
        allowedExtensions: ['csv']);
    var file = File(path! + '.csv');
    await file.create(recursive: true);
    await file.writeAsBytes(exported);
  }
}
