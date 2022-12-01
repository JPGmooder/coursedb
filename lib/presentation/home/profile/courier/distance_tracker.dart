import 'package:flutter/material.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'dart:async';
import 'dart:math' as math;

class DistanceTrackerExample extends StatefulWidget {
  const DistanceTrackerExample(
      {Key? key,
      required this.isLoading,
      required this.data,
      this.isTime = false})
      : super(key: key);
  final bool isTime;
  final Map<String, double> data;
  final bool isLoading;

  @override
  State<DistanceTrackerExample> createState() => _DistanceTrackerExampleState();
}

class _DistanceTrackerExampleState extends State<DistanceTrackerExample> {
  _DistanceTrackerExampleState();
  double currentValue = 1;
  double maxValue = 10000;
  int percent = 0;
  late bool isInit;
  @override
  void initState() {
    isInit = false;

    super.initState();
  }

  String intToTimeLeft(int value) {
    int h, m;

    h = value ~/ 3600;

    m = ((value - h * 3600)) ~/ 60;

    String hourLeft = h.toString();

    String minuteLeft = m.toString();

    String result = "${h < 1 ? "" : "${hourLeft}ч"} $minuteLeft мин";

    return result;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data.isNotEmpty && !isInit) {
      isInit = true;
      currentValue = widget.data.entries
          .firstWhere((element) => element.key == UserModel.get().login)
          .value;
      var values = widget.data.values.toList();
      values.sort();
      maxValue = values.first;
      var currentIndex =
          values.indexWhere((element) => element == currentValue) + 1;
      percent = (values.length / currentIndex * 100).toInt();
    }
    return Card(
      child: widget.isLoading
          ? Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.white,
              child: BaseCircularGauge())
          : SfRadialGauge(
              enableLoadingAnimation: true,
              title: GaugeTitle(
                  text: widget.isTime ? "Среднее время" : "Среднее расстояние",
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 18),
                  borderColor: AppsColors.accentColor),
              axes: <RadialAxis>[
                RadialAxis(
                    showLabels: false,
                    showTicks: false,
                    radiusFactor: 0.8,
                    maximum: maxValue,
                    axisLineStyle: const AxisLineStyle(
                        cornerStyle: CornerStyle.startCurve, thickness: 5),
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                          angle: 90,
                          widget: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                  widget.isTime
                                      ? (intToTimeLeft(currentValue.toInt()))
                                          .toString()
                                      : currentValue.toStringAsFixed(0),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20)),
                              if (!widget.isTime)
                                const Padding(
                                  padding:
                                       EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: Text(
                                    'Метров',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 12),
                                  ),
                                ),
                            ],
                          )),
                      GaugeAnnotation(
                        widget: Text(
                          widget.isTime
                              ? "В среднем быстрее чем $percent% курьеров"
                              : "В среднем больше чем у $percent% курьеров",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black45),
                        ),
                        angle: 90,
                        positionFactor: 1.45,
                        horizontalAlignment: GaugeAlignment.center,
                        verticalAlignment: GaugeAlignment.far,
                      )
                    ],
                    pointers: <GaugePointer>[
                      RangePointer(
                        value: currentValue,
                        width: 10,
                        pointerOffset: -6,
                        cornerStyle: CornerStyle.bothCurve,
                        color: Color(0xFFF67280),
                        gradient: SweepGradient(colors: <Color>[
                          AppsColors.primaryColor,
                          AppsColors.accentColor
                        ], stops: <double>[
                          0.25,
                          0.75
                        ]),
                      ),
                    ]),
              ],
            ),
    );
  }
}

class BaseCircularGauge extends StatelessWidget {
  const BaseCircularGauge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      title: GaugeTitle(
          text: "         ",
          textStyle:
              Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 18),
          borderColor: AppsColors.accentColor),
      axes: <RadialAxis>[
        RadialAxis(
            showLabels: false,
            showTicks: false,
            radiusFactor: 0.8,
            maximum: 100,
            axisLineStyle: const AxisLineStyle(
                cornerStyle: CornerStyle.startCurve, thickness: 5),
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                  angle: 90,
                  widget: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("             ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 20)),
                    ],
                  )),
              GaugeAnnotation(
                widget: Text(
                  "            ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.black45),
                ),
                angle: 90,
                positionFactor: 1.45,
                horizontalAlignment: GaugeAlignment.center,
                verticalAlignment: GaugeAlignment.far,
              )
            ],
            pointers: <GaugePointer>[
              RangePointer(
                value: 0,
                width: 10,
                pointerOffset: -6,
                cornerStyle: CornerStyle.bothCurve,
                color: Color(0xFFF67280),
                gradient: SweepGradient(colors: <Color>[
                  AppsColors.primaryColor,
                  AppsColors.accentColor
                ], stops: <double>[
                  0.25,
                  0.75
                ]),
              ),
            ]),
      ],
    );
  }
}
