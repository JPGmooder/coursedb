import 'dart:async';
import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:contextmenu/contextmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:kursachdesktop/data/colors.dart';
import 'package:kursachdesktop/domain/admin/employees/employees_cubit.dart';
import 'package:kursachdesktop/domain/admin/exporter/exporter.dart';
import 'package:kursachdesktop/domain/admin/users/users_cubit.dart';
import 'package:kursachdesktop/view/outsanding/emit_card.dart';
import 'package:kursachdesktop/view/outsanding/gradientmask.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
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
        title: "Должность",
        field: "postname",
        type: PlutoColumnType.select(
            ["Сотрудник", "Оператор технической поддержки"])),
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
    context.read<EmployeesCubit>().loadEmployees();
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
              child: BlocListener<EmployeesCubit, EmployeesState>(
                listener: ((context, state) {
                  state.maybeWhen(
                      orElse: () => null,
                      loading: () => setState(() {
                            isLoading = true;
                          }),
                      updated: () {
                        context.read<EmployeesCubit>().loadEmployees();
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
                                  // showContextMenu(
                                  //     event.offset,
                                  //     context,
                                  //     (ctx) => [
                                  //           ListTile(
                                  //             onTap: () {
                                  //               // var index = addedRows.indexWhere(
                                  //               //     (element) =>
                                  //               //         element.key ==
                                  //               //         event.row.key);

                                  //               Future.delayed(
                                  //                 Duration.zero,
                                  //                 () {
                                  //                   setState(() {
                                  //                     removedRows
                                  //                         .add(event.row);
                                  //                   });
                                  //                 },
                                  //               );
                                  //               stateManager?.changeCellValue(
                                  //                   event
                                  //                       .row.cells['isBanned']!,
                                  //                   event.row.cells['isBanned']!
                                  //                               .value ==
                                  //                           "Функционирует"
                                  //                       ? "Заблокирован"
                                  //                       : "Функционирует",
                                  //                   force: true);

                                  //               var index = removedRows
                                  //                   .indexWhere((element) =>
                                  //                       element.key ==
                                  //                       event.row.key);
                                  //               if (index != -1) {
                                  //                 removedRows.removeAt(index);
                                  //               }
                                  //               Navigator.of(ctx).pop();
                                  //             },
                                  //             title: Text(event
                                  //                         .row
                                  //                         .cells['isBanned']!
                                  //                         .value ==
                                  //                     "Заблокирован"
                                  //                 ? "Разблокировать пользователя ${event.row.cells['userlogin']!.value}"
                                  //                 : "Заблокировать пользователя ${event.row.cells['userlogin']!.value}"),
                                  //           )
                                  //         ],
                                  //     10.0,
                                  //     MediaQuery.of(context).size.width * 0.15);
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
                                                    'Таблица Сотрудников');
                                                break;
                                              case 1:
                                                Exporter
                                                    .printToPdfAndShareOrSave(
                                                        stateManager,
                                                        "Таблица Сотрудников",
                                                        'Администратор');
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
                                        PopupMenuButton(
                                          tooltip: "Манипуляция данными",
                                          onSelected: (value) {
                                            switch (value) {
                                              case 0:
                                                showDialog(
                                                    context: context,
                                                    builder: (ctx) =>
                                                        AlertDialog(
                                                          title: Text(
                                                              "Добавление нового сотрудника"),
                                                          content:
                                                              addNewEmployeeWidget(
                                                            parentContext:
                                                                context,
                                                          ),
                                                        ));
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
                                                  child: Text(
                                                      'Добавить сотрудника'),
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
                      context.read<EmployeesCubit>().changeEmployees(
                            editedEmployees: loadedEditedRows,
                            deletedEmployees: loadedDeletedRows,
                          );
                    },
                    onDeny: () => setState(() {
                      context.read<EmployeesCubit>().loadEmployees();
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

class addNewEmployeeWidget extends StatefulWidget {
  const addNewEmployeeWidget({Key? key, required this.parentContext})
      : super(key: key);
  final BuildContext parentContext;
  @override
  State<addNewEmployeeWidget> createState() => _addNewEmployeeWidgetState();
}

class _addNewEmployeeWidgetState extends State<addNewEmployeeWidget> {
  late TextEditingController _controller;
  String pickedPost = "Сотрудник";
  late StreamController<String> _textStream;
  Map<String, dynamic>? pickedUser;
  @override
  void initState() {
    _controller = TextEditingController();
    _textStream = StreamController<String>();
    _controller.addListener(() {
      _textStream.add(_controller.text.trim());
    });
    _textStream.stream
        .debounceTime(Duration(milliseconds: 300))
        .distinct()
        .listen((event) {
      widget.parentContext.read<UsersCubit>().findUsers(userLogin: event);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text("Выберите логин и должность будущего сотрудника"),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        label: Text("Логин"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))))),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    if (pickedUser != null)
                      Card(
                        child: ListTile(
                          trailing: Radio(
                            value: pickedUser,
                            groupValue: pickedUser,
                            onChanged: (value) => null,
                          ),
                          title: Text(
                            pickedUser!['userlogin'],
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          subtitle: Text(
                              "${pickedUser!['personaldatum']['personallname']} ${pickedUser!['personaldatum']['personalname']} ${pickedUser!['personaldatum']['personalpatronymic'] ?? ''}"),
                        ),
                      ),
                    BlocBuilder<UsersCubit, UsersState>(
                      bloc: BlocProvider.of<UsersCubit>(widget.parentContext),
                      builder: (context, state) {
                        return state.maybeWhen(
                            orElse: () =>
                                Center(child: CircularProgressIndicator()),
                            usersFounded: (users) => SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ListView.builder(
                                    itemBuilder: (ctx, index) {
                                      var currentUser = users[index];
                                      return SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: ListTile(
                                          trailing: Radio(
                                            value: users[index],
                                            groupValue: pickedUser,
                                            onChanged: (value) => setState(() {
                                              pickedUser = value;
                                            }),
                                          ),
                                          title: Text(
                                            currentUser['userlogin'],
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                          subtitle: Text(
                                              "${currentUser['personaldatum']['personallname']} ${currentUser['personaldatum']['personalname']} ${currentUser['personaldatum']['personalpatronymic'] ?? ''}"),
                                        ),
                                      );
                                    },
                                    itemCount: users.length,
                                  ),
                                ));
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        if (pickedUser != null)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Выберите должность",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  DropdownButton(
                      icon: Container(),
                      hint: Text("Должность"),
                      value: pickedPost,
                      items: [
                        DropdownMenuItem<String>(
                          child: Text("Сотрудник"),
                          value: "Сотрудник",
                        ),
                        DropdownMenuItem<String>(
                          child: Text("Оператор технической поддержки"),
                          value: "Оператор технической поддержки",
                        ),
                      ],
                      onChanged: (value) => setState(() {
                            pickedPost = value ?? "Сотрудник";
                          })),
                ],
              ),
            ),
          ),
        if (pickedUser != null)
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: GradientMask(
                size: 100,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                child: NeumorphicButton(
                  onPressed: () {
                    widget.parentContext
                        .read<EmployeesCubit>()
                        .insertEmployees(insertableEmployees: [
                      {
                        "userlogin": pickedUser!['userlogin'],
                        "postname": pickedPost,
                        "status": "Принят"
                      }
                    ]);
                    Navigator.pop(context);
                  },
                  style: NeumorphicStyle(color: Colors.white54),
                  child: Center(
                    child: Text(
                      "Принять",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
              ),
            ),
          )
      ]),
    );
  }
}
