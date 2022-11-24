import 'dart:convert';

import 'package:contextmenu/contextmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:kursachdesktop/domain/admin/exporter/exporter.dart';
import 'package:kursachdesktop/domain/admin/users/users_cubit.dart';
import 'package:kursachdesktop/view/outsanding/emit_card.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  late List<PlutoRow> rows;
  late List<PlutoRow> changedRows;
  late List<PlutoRow> removedRows;

  final groups = [
    PlutoColumnGroup(
        title: "Данные аутентификации", fields: ['userlogin', 'emailaddress']),
    PlutoColumnGroup(
      title: "Персональные данные",
      fields: [
        'personalname',
        'personallname',
        'personalpatronymic',
        'personaldateofbirth',
        'personalmobilenumber'
      ],
    )
  ];
  final columns = [
    PlutoColumn(
        title: "Логин", field: "userlogin", type: PlutoColumnType.text()),
    PlutoColumn(
        title: "Адрес электронной почты",
        field: "emailaddress",
        type: PlutoColumnType.text()),
    PlutoColumn(
        title: "Имя", field: "personalname", type: PlutoColumnType.text()),
    PlutoColumn(
        title: "Фамилия", field: "personallname", type: PlutoColumnType.text()),
    PlutoColumn(
        title: "Отчество",
        field: "personalpatronymic",
        type: PlutoColumnType.text()),
    PlutoColumn(
        title: "Дата рождения",
        field: "personaldateofbirth",
        type: PlutoColumnType.date()),
    PlutoColumn(
        title: "Номер телефона",
        field: "personalmobilenumber",
        type: PlutoColumnType.text()),
  ];
  late final PlutoGridStateManager stateManager;

  @override
  void initState() {
    rows = [];
    changedRows = [];
    removedRows = [];
    context.read<UsersCubit>().loadUsers();
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
                "Управление пользовательскими данными",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: BlocListener<UsersCubit, UsersState>(
                listener: ((context, state) {
                  state.maybeWhen(
                      orElse: () => null,
                      loaded: ((users) {
                        users.forEach((element) {
                          element.updateAll((key, value) =>
                              value = PlutoCell(value: value ?? '-'));
                        });
                        var currentRows = users.map((element) => PlutoRow(
                            cells: Map<String, PlutoCell>.from(element)));
                        setState(() {
                          rows = currentRows.toList();
                        });
                      }));
                }),
                child: rows.isEmpty
                    ? CircularProgressIndicator()
                    : LayoutBuilder(
                        builder: (ctx, cons) => SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: cons.maxWidth,
                            height: cons.maxHeight,
                            child: PlutoGrid(
                              onSelected: (event) => print(event.toString()),
                              onRowSecondaryTap: (event) {
                                stateManager.toggleSelectingRow(event.rowIdx);
                                showContextMenu(
                                    event.offset,
                                    context,
                                    (ctx) => [
                                          ListTile(
                                            onTap: () {
                                              // var index = addedRows.indexWhere(
                                              //     (element) =>
                                              //         element.key ==
                                              //         event.row.key);

                                              Future.delayed(
                                                Duration.zero,
                                                () {
                                                  setState(() {
                                                    removedRows.add(event.row);
                                                  });
                                                },
                                              );
                                              stateManager
                                                  .removeRows([event.row]);
                                              Navigator.of(ctx).pop();
                                            },
                                            title: Text("Удалить запись"),
                                          )
                                        ],
                                    10.0,
                                    MediaQuery.of(context).size.width * 0.15);
                              },
                              createHeader: ((stateManager) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      PopupMenuButton(
                                        tooltip: "Выберите тип экспорт данных",
                                        onSelected: (value) {
                                          switch (value) {
                                            case 0:
                                              Exporter.exportToCsv(stateManager,
                                                  'Таблица Users');
                                              break;
                                            case 1:
                                              Exporter.printToPdfAndShareOrSave(
                                                  stateManager,
                                                  "Таблица Users",
                                                  'Администратор');
                                              break;
                                            case 2:
                                              Exporter.printToPdfAndShareOrSave(
                                                  stateManager,
                                                  "Users(${DateFormat.yMd().add_jm()})",
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      PopupMenuButton(
                                        tooltip: "Добавление и удаление данных",
                                        onSelected: (value) {
                                          switch (value) {
                                            case 0:
                                              stateManager.appendNewRows();
                                              break;
                                            case 1:
                                              print(stateManager
                                                  .currentSelectingRows);
                                              stateManager.removeRows(
                                                  stateManager.checkedRows);

                                              break;
                                            default:
                                          }
                                        },
                                        itemBuilder: ((context) =>
                                            <PopupMenuEntry<int>>[
                                              const PopupMenuItem<int>(
                                                value: 0,
                                                child: Text('Добавить строку'),
                                              ),
                                              const PopupMenuItem<int>(
                                                value: 1,
                                                child: Text('Удалить строку'),
                                              ),
                                            ]),
                                        child: Text(
                                          "Добавление/Удаление данных",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      )
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
                                      var addedRowsIndex = rows.indexWhere(
                                          (element) =>
                                              element.key == event.row.key);

                                      changedRows.add(event.row);
                                    } else {
                                      changedRows[index] = event.row;
                                    }
                                  });
                                }
                              }),
                              onLoaded: (PlutoGridOnLoadedEvent event) {
                                stateManager = event.stateManager;
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
          ],
        ),
        if (removedRows.isNotEmpty || changedRows.isNotEmpty)
          EmitCard(deletedRows: removedRows, editedRows: changedRows)
      ],
    );
  }
}
