import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:contextmenu/contextmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:kursachdesktop/data/colors.dart';
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
  late List<Key> addedRows;
  bool isLoading = false;
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
        title: "Логин",
        field: "userlogin",
        readOnly: true,
        checkReadOnly: (row, cell) {
          return !row.state.isAdded;
        },
        type: PlutoColumnType.text()),
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
    PlutoColumn(
        title: "Блокировка",
        field: "isBanned",
        readOnly: true,
        type: PlutoColumnType.text()),
  ];
  PlutoGridStateManager? stateManager;

  @override
  void initState() {
    rows = [];
    changedRows = [];
    removedRows = [];
    addedRows = [];
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
                      loading: () => setState(() {
                            isLoading = true;
                          }),
                      usersManaged: (managedUsers) {
                        context.read<UsersCubit>().loadUsers();
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
                                                      removedRows
                                                          .add(event.row);
                                                    });
                                                  },
                                                );
                                                stateManager?.changeCellValue(
                                                    event
                                                        .row.cells['isBanned']!,
                                                    event.row.cells['isBanned']!
                                                                .value ==
                                                            "Функционирует"
                                                        ? "Заблокирован"
                                                        : "Функционирует",
                                                    force: true);

                                                var index = removedRows
                                                    .indexWhere((element) =>
                                                        element.key ==
                                                        event.row.key);
                                                if (index != -1) {
                                                  removedRows.removeAt(index);
                                                }
                                                Navigator.of(ctx).pop();
                                              },
                                              title: Text(event
                                                          .row
                                                          .cells['isBanned']!
                                                          .value ==
                                                      "Заблокирован"
                                                  ? "Разблокировать пользователя ${event.row.cells['userlogin']!.value}"
                                                  : "Заблокировать пользователя ${event.row.cells['userlogin']!.value}"),
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
                                          tooltip:
                                              "Выберите тип экспорт данных",
                                          onSelected: (value) {
                                            switch (value) {
                                              case 0:
                                                Exporter.exportToCsv(
                                                    stateManager,
                                                    'Таблица Users');
                                                break;
                                              case 1:
                                                Exporter
                                                    .printToPdfAndShareOrSave(
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                        PopupMenuButton(
                                          tooltip:
                                              "Добавление и удаление данных",
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
                                                  child:
                                                      Text('Добавить строку'),
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
                      onAccept: () => null,
                      onDeny: () => setState(() {
                            rows = [];
                            stateManager!.removeAllRows();
                            context.read<UsersCubit>().loadUsers();
                          }),
                      addedRowsKeys: addedRows,
                      deletedRows: removedRows,
                      editedRows: changedRows))),
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
