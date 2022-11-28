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
import 'package:kursachdesktop/domain/support/support_cubit.dart';
import 'package:kursachdesktop/view/outsanding/emit_card.dart';
import 'package:kursachdesktop/view/outsanding/gradientmask.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            children: [],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Курьерские данные",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              NeumorphicButton(
                style: NeumorphicStyle(color: AppsColors.accentColor),
                onPressed: () => null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.refresh,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Обновить",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          Center(
            child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 15,
                runSpacing: 15,
                children: List.generate(
                    4,
                    (index) => Container(
                          width: 150,
                          height: 150,
                          color: Colors.red,
                        ))),
          ),
          Expanded(child: CourierTableScreen())
        ]),
      ),
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

  final columns = [
    PlutoColumn(
        title: "Номер заявки",
        field: "id",
        readOnly: true,
        type: PlutoColumnType.text()),
    PlutoColumn(
        title: "Логин",
        field: "userlogin",
        readOnly: true,
        type: PlutoColumnType.text()),
    PlutoColumn(
        readOnly: true,
        title: "Содержание",
        field: "content",
        type: PlutoColumnType.text()),
    PlutoColumn(
        readOnly: true,
        title: "Дата составления",
        field: "date",
        type: PlutoColumnType.date()),
    PlutoColumn(
        readOnly: true,
        title: "Ответ",
        field: "answer",
        type: PlutoColumnType.text()),
    PlutoColumn(
        title: "Статус",
        field: "status",
        type: PlutoColumnType.select([
          'Ожидание рассмотрения',
          'Рассмотрение',
          'Выполнено',
          'Отказано'
        ])),
  ];
  PlutoGridStateManager? stateManager;

  @override
  void initState() {
    rows = [];
    changedRows = [];
    removedRows = [];
    addedRows = [];
    context.read<SupportCubit>().loadTickets();
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
                "Управление заявками",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: BlocListener<SupportCubit, SupportState>(
                listener: ((context, state) {
                  state.maybeWhen(
                      orElse: () => null,
                      loading: () => setState(() {
                            isLoading = true;
                          }),
                      changed: () {
                        context.read<SupportCubit>().loadTickets();
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
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (ctx) => AlertDialog(
                                                              title: Text(
                                                                "Просмотр заявки №${event.row.cells['id']!.value} от ${event.row.cells['date']!.value}",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .titleMedium,
                                                              ),
                                                              content:
                                                                  ticketChangeWidget(
                                                                      updateTable:
                                                                          (newRow) {
                                                                        var index = stateManager!.rows.indexWhere((element) =>
                                                                            element.key ==
                                                                            newRow.key);
                                                                        setState(
                                                                            () {
                                                                          stateManager!.rows[index] =
                                                                              newRow;
                                                                          changedRows
                                                                              .add(newRow);
                                                                        });
                                                                      },
                                                                      currentRow:
                                                                          event
                                                                              .row),
                                                            ));
                                              },
                                              title: Text("Подробнее"),
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
                      context.read<SupportCubit>().updateTicket(
                            editedRows: loadedEditedRows,
                          );
                    },
                    onDeny: () => setState(() {
                      context.read<SupportCubit>().loadTickets();
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

class ticketChangeWidget extends StatefulWidget {
  const ticketChangeWidget(
      {Key? key, required this.currentRow, required this.updateTable})
      : super(key: key);
  final PlutoRow currentRow;
  final void Function(PlutoRow updatedTow) updateTable;

  @override
  State<ticketChangeWidget> createState() => _ticketChangeWidgetState();
}

class _ticketChangeWidgetState extends State<ticketChangeWidget> {
  late String currentGroupValue;
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController(
        text: widget.currentRow.cells['answer']!.value == "-"
            ? null
            : widget.currentRow.cells['answer']!.value);
    currentGroupValue = widget.currentRow.cells['status']!.value;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var curCons = MediaQuery.of(context).size.width < 600
        ? BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8)
        : BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.5);
    return ConstrainedBox(
      constraints: curCons,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Состав заявления",
                style: Theme.of(context).textTheme.titleMedium,
                textScaleFactor: 1.3,
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.currentRow.cells['content']!.value,
                  style: Theme.of(context).textTheme.labelMedium,
                  textScaleFactor: 1.7,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Ответ специалиста",
                style: Theme.of(context).textTheme.titleMedium,
                textScaleFactor: 1.3,
              ),
            ),
            Card(
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.3),
                child: TextField(
                    controller: _controller,
                    minLines: 2,
                    maxLines: 10,
                    style: Theme.of(context).textTheme.labelMedium,
                    decoration: InputDecoration(
                        hintText: "Отсутствует",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3)))),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Wrap(
                children: List.generate(4, (index) {
                  late String currentValue;
                  switch (index) {
                    case 0:
                      currentValue = "Ожидание рассмотрения";
                      break;
                    case 1:
                      currentValue = "Рассмотрение";
                      break;
                    case 2:
                      currentValue = "Отказано";

                      break;
                    case 3:
                      currentValue = "Выполнено";
                      break;

                    default:
                  }

                  return SizedBox(
                    width: MediaQuery.of(context).size.width < 1200
                        ? null
                        : MediaQuery.of(context).size.width * 0.15,
                    child: RadioListTile<String>(
                        value: currentValue,
                        title: Text(currentValue),
                        groupValue: currentGroupValue,
                        onChanged: (value) => setState(() {
                              currentGroupValue = value ?? currentGroupValue;
                            })),
                  );
                }),
              ),
            ),
            GradientMask(
              size: 170,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              child: SizedBox(
                width: curCons.maxWidth * 0.3,
                child: ElevatedButton(
                    onPressed: () {
                      var currentCells = widget.currentRow.cells;
                      currentCells['answer']!.value = _controller.text;
                      currentCells['status']!.value = currentGroupValue;

                      widget.updateTable(PlutoRow(
                          cells: currentCells,
                          key: widget.currentRow.key,
                          checked: widget.currentRow.checked ?? false,
                          sortIdx: widget.currentRow.sortIdx,
                          type: widget.currentRow.type));
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white54),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Зафиксировать изменения",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
