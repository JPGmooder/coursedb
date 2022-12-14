import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CourierChart extends StatelessWidget {
  CourierChart({Key? key, required this.loadedInfo}) : super(key: key);
  List<Map<String, Map<DateTime, double>>> loadedInfo;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        title: ChartTitle(text: "Стоимость доставок"),
        legend: Legend(
          title: LegendTitle(
            textStyle: Theme.of(context).textTheme.titleMedium,
            text: "Легенда",
          ),
          width: '100%',
          isVisible: true,
          orientation: LegendItemOrientation.horizontal,
          position: LegendPosition.bottom,
          overflowMode: LegendItemOverflowMode.scroll,
          borderColor: AppsColors.accentColor,
          itemPadding: 5,
          isResponsive: true,
          legendItemBuilder: (legendText, series, point, seriesIndex) {
            var currentSeries =
                (series as LineSeries<Map<DateTime, double>, String>);

            return SizedBox(
              width: loadedInfo.isNotEmpty
                  ? MediaQuery.of(context).size.width * 0.3
                  : null,
              child: Text(
                loadedInfo[seriesIndex].entries.first.key,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: currentSeries.color),
              ),
            );
          },
        ),
        primaryXAxis: CategoryAxis(),
        series: <LineSeries<Map<DateTime, double>, String>>[
          ...loadedInfo.map((element) {
            List<Map<DateTime, double>> currentList = [];

            for (var element in element.values.first.entries) {
              currentList.add({element.key: element.value});
            }
            return LineSeries<Map<DateTime, double>, String>(
                color: element.keys.first == UserModel.get().login
                    ? AppsColors.accentColor
                    : Color.fromRGBO(Random().nextInt(255),
                        Random().nextInt(255), Random().nextInt(255), 1),
                opacity: element.keys.first == UserModel.get().login ? 1 : 0.3,
                dataSource: currentList,
                xValueMapper: (currentMap, _) =>
                    DateFormat.Md().format(currentMap.keys.first),
                yValueMapper: (currentMap, _) => currentMap.values.first);
          }).toList(),
        ]);
  }
}
