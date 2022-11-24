import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursachdesktop/data/colors.dart';
import 'package:pluto_grid/pluto_grid.dart';

class CouriersScreen extends StatelessWidget {
  const CouriersScreen({Key? key}) : super(key: key);

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
        ]),
      ),
    );
  }
}

// class CurrentGrid extends StatefulWidget {
//   CurrentGrid({Key? key}) : super(key: key);

//   @override
//   State<CurrentGrid> createState() => _CurrentGridState();
// }

// class _CurrentGridState extends State<CurrentGrid> {
//   final List<PlutoColumn> columns = <PlutoColumn>[
//     PlutoColumn(
//       title: 'Id',
//       field: 'id',
//       type: PlutoColumnType.text(),
//     ),
//     PlutoColumn(
//       title: 'Name',
//       field: 'name',
//       type: PlutoColumnType.text(),
//     ),
//     PlutoColumn(
//       title: 'Age',
//       field: 'age',
//       type: PlutoColumnType.number(),
//     ),
//     PlutoColumn(
//       title: 'Role',
//       field: 'role',
//       type: PlutoColumnType.select(<String>[
//         'Programmer',
//         'Designer',
//         'Owner',
//       ]),
//     ),
//     PlutoColumn(
//       title: 'Joined',
//       field: 'joined',
//       type: PlutoColumnType.date(),
//     ),
//     PlutoColumn(
//       title: 'Working time',
//       field: 'working_time',
//       type: PlutoColumnType.time(),
//     ),
//   ];
//   final List<PlutoRow> rows = [
//     PlutoRow(
//       cells: {
//         'id': PlutoCell(value: 'user1'),
//         'name': PlutoCell(value: 'Mike'),
//         'age': PlutoCell(value: 20),
//         'role': PlutoCell(value: 'Programmer'),
//         'joined': PlutoCell(value: '2021-01-01'),
//         'working_time': PlutoCell(value: '09:00'),
//       },
//     ),
//     PlutoRow(
//       cells: {
//         'id': PlutoCell(value: 'user2'),
//         'name': PlutoCell(value: 'Jack'),
//         'age': PlutoCell(value: 25),
//         'role': PlutoCell(value: 'Designer'),
//         'joined': PlutoCell(value: '2021-02-01'),
//         'working_time': PlutoCell(value: '10:00'),
//       },
//     ),
//     PlutoRow(
//       cells: {
//         'id': PlutoCell(value: 'user3'),
//         'name': PlutoCell(value: 'Suzi'),
//         'age': PlutoCell(value: 40),
//         'role': PlutoCell(value: 'Owner'),
//         'joined': PlutoCell(value: '2021-03-01'),
//         'working_time': PlutoCell(value: '11:00'),
//       },
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return PlutoGrid(
//       columns: columns,
//       rows: rows,
//     );
//   }
// }
