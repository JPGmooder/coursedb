import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:contextmenu/contextmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:kursachdesktop/data/colors.dart';
import 'package:kursachdesktop/domain/admin/exporter/exporter.dart';
import 'package:kursachdesktop/domain/admin/users/users_cubit.dart';
import 'package:kursachdesktop/domain/employee/courier/courier_cubit.dart';
import 'package:kursachdesktop/domain/model/user_model.dart';
import 'package:kursachdesktop/view/outsanding/emit_card.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class CouriersScreen extends StatelessWidget {
  const CouriersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CourierTableScreen(),
    );
  }
}

class CourierTableScreen extends StatefulWidget {
  const CourierTableScreen({Key? key}) : super(key: key);

  @override
  State<CourierTableScreen> createState() => _CourierTableScreenState();
}

class _CourierTableScreenState extends State<CourierTableScreen> {
  late List<PlutoRow> rows;
  late List<PlutoRow> changedRows;
  late List<PlutoRow> removedRows;
  late List<Key> addedRows;
  bool isLoading = false;
  final groups = [
    PlutoColumnGroup(
      title: "Персональные данные",
      fields: ['fio', 'personaldateofbirth', 'personalmobilenumber'],
    ),
    PlutoColumnGroup(
        title: "Должностные данные", fields: ['postname', 'status']),
  ];
  final columns = [
    PlutoColumn(
        title: "Логин",
        field: "userlogin",
        readOnly: true,
        type: PlutoColumnType.text()),
    PlutoColumn(
        readOnly: true,
        title: "ФИО",
        field: "fio",
        type: PlutoColumnType.text()),
    PlutoColumn(
        readOnly: true,
        title: "Дата рождения",
        field: "personaldateofbirth",
        type: PlutoColumnType.date()),
    PlutoColumn(
        readOnly: true,
        title: "Номер телефона",
        field: "personalmobilenumber",
        type: PlutoColumnType.text()),
    PlutoColumn(
        title: "Статус",
        field: "status",
        type: PlutoColumnType.select(['Рассмотрение', 'Принят', 'Уволен'])),
  ];
  PlutoGridStateManager? stateManager;

  @override
  void initState() {
    rows = [];
    changedRows = [];
    removedRows = [];
    addedRows = [];
    context.read<CourierCubit>().loadCouriers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Управление курьерскими данными",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: BlocListener<CourierCubit, CourierState>(
                listener: ((context, state) {
                  state.maybeWhen(
                      orElse: () => null,
                      loading: () => setState(() {
                            isLoading = true;
                          }),
                      updated: () {
                        context.read<CourierCubit>().loadCouriers();
                      },
                      loaded: ((users) {
                        addedRows.clear();
                        changedRows.clear();
                        removedRows.clear();

                        stateManager?.removeAllRows();
                        users.forEach((element) {
                          element.updateAll((key, value) =>
                              value = PlutoCell(value: value ?? '-'));
                        });
                        var currentRows = users.map((element) => PlutoRow(
                              cells: Map<String, PlutoCell>.from(element),
                            ));
                        setState(() {
                          rows = currentRows.toList();
                          isLoading = false;
                        });

                        stateManager?.appendRows(rows);
                      }));
                }),
                child: rows.isEmpty
                    ? CircularProgressIndicator()
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: LayoutBuilder(
                          builder: (ctx, cons) => SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                              width: cons.maxWidth,
                              height: cons.maxHeight,
                              child: PlutoGrid(
                                onSelected: (event) => print(event.toString()),
                                onRowSecondaryTap: (event) {
                                  stateManager
                                      ?.toggleSelectingRow(event.rowIdx);
                                },
                                createHeader: ((stateManager) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        PopupMenuButton(
                                          tooltip:
                                              "Выберите тип экспорт данных",
                                          onSelected: (value) {
                                            switch (value) {
                                              case 0:
                                                Exporter.exportToCsv(
                                                    stateManager,
                                                    'Таблица Курьеров');
                                                break;
                                              case 1:
                                                Exporter.printToPdfAndShareOrSave(
                                                    stateManager,
                                                    "Таблица Курьеров",
                                                    '${UserModel.get().postName} ${UserModel.get().personalData.toString()}');
                                                break;
                                              case 2:
                                                Exporter.printToPdfAndShareOrSave(
                                                    stateManager,
                                                    "Employees(${DateFormat.yMd().add_jm()})",
                                                    'Admin');
                                                break;
                                              default:
                                            }
                                          },
                                          itemBuilder: ((context) =>
                                              <PopupMenuEntry<int>>[
                                                const PopupMenuItem<int>(
                                                  value: 0,
                                                  child: Text(
                                                      'Экспорт данных в CSV'),
                                                ),
                                                const PopupMenuItem<int>(
                                                  value: 1,
                                                  child: Text(
                                                      'Экспорт данных в PDF'),
                                                ),
                                                const PopupMenuItem<int>(
                                                  value: 2,
                                                  child: Text(
                                                      'Импорт данных из CSV'),
                                                ),
                                              ]),
                                          child: Text(
                                            "Экспорт данных",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                                onChanged: ((event) {
                                  if (event.value != event.oldValue) {
                                    var index = changedRows.indexWhere(
                                        (element) =>
                                            element.key == event.row.key);
                                    setState(() {
                                      if (index == -1) {
                                        changedRows.add(event.row);
                                      } else {
                                        changedRows[index] = event.row;
                                      }
                                    });
                                  }
                                }),
                                onLoaded: (PlutoGridOnLoadedEvent event) {
                                  stateManager = event.stateManager;

                                  stateManager!.addListener(() {
                                    addedRows.addAll(stateManager!.rows
                                        .where((element) =>
                                            element.state.isAdded &&
                                            !addedRows.contains(element.key))
                                        .map((e) => e.key));
                                  });
                                  setState(() {
                                    event.stateManager.setSelectingMode(
                                        PlutoGridSelectingMode.cell);
                                  });
                                },
                                noRowsWidget: CircularProgressIndicator(),
                                columnGroups: groups,
                                columns: columns,
                                rows: rows,
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
        if (removedRows.isNotEmpty || changedRows.isNotEmpty)
          Positioned(
              right: 0,
              bottom: 0,
              child: SizedBox(
                  width: 300,
                  height: 188,
                  child: EmitCard(
                    onAccept: () {
                      List<Map<String, dynamic>> loadedDeletedRows = [];
                      List<Map<String, dynamic>> loadedEditedRows = [];
                      List<Map<String, dynamic>> loadedAddedRows = [];
                      for (var element in removedRows) {
                        Map<String, dynamic> currentMap = {};
                        for (var cell in element.cells.entries) {
                          var currentEntry = {cell.key: cell.value.value};
                          currentMap.addAll(currentEntry);
                        }
                        loadedDeletedRows.add(currentMap);
                      }

                      for (var element in changedRows) {
                        Map<String, dynamic> currentMap = {};

                        for (var cell in element.cells.entries) {
                          var currentEntry = {cell.key: cell.value.value};

                          currentMap.addAll(currentEntry);
                        }
                        if (addedRows.contains(element.key)) {
                          loadedAddedRows.add(currentMap);
                        } else {
                          loadedEditedRows.add(currentMap);
                        }
                      }
                      context.read<CourierCubit>().changeCourier(
                            editedCouriers: loadedEditedRows,
                          );
                    },
                    onDeny: () => setState(() {
                      context.read<CourierCubit>().loadCouriers();
                    }),
                  ))),
        if (isLoading)
          Positioned.fill(
              child: ColoredBox(
            color: Colors.black.withOpacity(0.7),
            child: Center(
                child: AnimatedTextKit(animatedTexts: [
              FlickerAnimatedText("Загрузка",
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: AppsColors.accentColor, shadows: [
                    BoxShadow(
                      color: AppsColors.accentColor,
                      spreadRadius: 4,
                      blurRadius: 13,
                    ),
                    BoxShadow(
                      color: AppsColors.accentColor,
                      spreadRadius: -4,
                      blurRadius: 5,
                    )
                  ]))
            ])),
          ))
      ],
    );
  }
}
