import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as plutoExport;
import 'package:process_run/shell_run.dart';

class Exporter {
  static void printToPdfAndShareOrSave(
      PlutoGridStateManager state, String title, String creator,
      {bool isBig = false}) async {
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
      format:
          isBig ? plutoExport.PdfPageFormat.a3 : plutoExport.PdfPageFormat.a4,
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

  static void exportDump() async {
    var path = await FilePicker.platform.saveFile(
        dialogTitle: "Выберите путь экспорта файла.",
        allowedExtensions: ['.sql']);
    var file = File(path! + '.sql');
    var result = await Shell(
            includeParentEnvironment: true,
            commentVerbose: true,
            verbose: true,
            environment: {'PGPASSWORD': 'bqcccZS4hECsxy2T'},
            runInShell: true)
        .run(
            '${r"C:\pg_dump.exe"} -h db.xomxmkboeuoupjkirjnh.supabase.co -p 5432 -U postgres postgres > ${file.path}');
    var bebra = result;
  }
}
