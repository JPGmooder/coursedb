import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/employee/bloc/employee_bloc.dart';
import 'package:kursach/domain/model/statistic_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/home/profile/courier/chart.dart';
import 'package:kursach/presentation/home/profile/courier/distance_tracker.dart';
import 'package:kursach/presentation/home/profile/orders/my_orders_screen.dart';
import 'package:shimmer/shimmer.dart';

class CourierStatisticScreen extends StatefulWidget {
  CourierStatisticScreen({Key? key}) : super(key: key);

  @override
  State<CourierStatisticScreen> createState() => _CourierStatisticScreenState();
}

class _CourierStatisticScreenState extends State<CourierStatisticScreen> {
  List<CourierStatistic>? statistic;
  Map<String, double>? averageDistance;
  Map<String, double>? averageTime;

  List<Map<String, Map<DateTime, double>>>? statisticForChart;

  @override
  void initState() {
    context.read<EmployeeBloc>().add(
        EmployeeEvent.loadStatisticEvent(userLogin: UserModel.get().login));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<EmployeeBloc, EmployeeState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () => null,
              loading: () => statistic?.clear(),
              statisticLoaded: (loadedStatistic) {
                Map<String, double> _averageDistance = {};
                Map<String, double> _averageTime = {};
                statistic = [...loadedStatistic];

                //* Рассчет среднего времени и расстояния
                for (var element in statistic!) {
                  if (!_averageDistance.containsKey(element.userLogin)) {
                    //* Рассчёт среднего пути
                    var usersDistances = loadedStatistic
                        .where((welement) =>
                            welement.userLogin == element.userLogin)
                        .map((e) => e.distance);

                    _averageDistance.addAll({
                      element.userLogin: usersDistances
                              .reduce((value, element) => value + element) /
                          usersDistances.length
                    });

                    //* Рассчёт среднего времени

                    var loadedTimes = loadedStatistic
                        .where((welement) =>
                            welement.userLogin == element.userLogin)
                        .map((e) => e.deliverTime.difference(e.acceptTime));
                    _averageTime.addAll({
                      element.userLogin: loadedTimes
                              .reduce((value, element) => value + element)
                              .inSeconds /
                          loadedTimes.length
                    });
                  }
                }

                //* Рассчет статистики для большого чарта
                List<Map<String, Map<DateTime, double>>> _statisticForChart =
                    [];
                for (var element in statistic!) {
                  var index = _statisticForChart.indexWhere(
                      (chelement) => chelement.keys.first == element.userLogin);
                  if (index == -1) {
                    _statisticForChart.add({
                      element.userLogin: {
                        DateUtils.dateOnly(element.deliverTime.toLocal()):
                            element.orderModel.orderPrice
                      }
                    });
                  } else {
                    var currentValue = _statisticForChart[index]
                            [element.userLogin]![
                        DateUtils.dateOnly(element.deliverTime.toLocal())];
                    if (currentValue == null) {
                      _statisticForChart[index][element.userLogin]!.addAll({
                        DateUtils.dateOnly(element.deliverTime.toLocal()):
                            element.orderModel.orderPrice
                      });
                    } else {
                      _statisticForChart[index][element.userLogin]![
                              DateUtils.dateOnly(
                                  element.deliverTime.toLocal())] =
                          element.orderModel.orderPrice + currentValue;
                    }
                  }
                }

                setState(() {
                  averageDistance = _averageDistance;
                  averageTime = _averageTime;
                  statisticForChart = _statisticForChart;
                });
              });
        },
        child: RefreshIndicator(
          onRefresh: () async {
            context
                .read<EmployeeBloc>()
                .add(EmployeeEvent.loadStatisticEvent(userLogin: ""));
            setState(() {
              averageDistance = null;
              averageTime = null;
              statistic = null;
              statisticForChart = null;
            });
            await Future.delayed(Duration(seconds: 1));
          },
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                centerTitle: true,
                backgroundColor: Theme.of(context).colorScheme.surface,
                title: Text(
                  "Статистика доставок",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SliverToBoxAdapter(
                child: Wrap(alignment: WrapAlignment.spaceEvenly, children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.48,
                      height: 250,
                      child: DistanceTrackerExample(
                        isLoading: statistic == null,
                        data: averageDistance ?? {},
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.48,
                      height: 250,
                      child: DistanceTrackerExample(
                        isLoading: statistic == null,
                        isTime: true,
                        data: averageTime ?? {},
                      )),
                ]),
              ),
              SliverToBoxAdapter(
                child: Card(
                    child: CourierChart(
                  loadedInfo: statisticForChart ?? [],
                )),
              ),
              SliverFillRemaining(
                  child: MyOrdersScreen(
                isCourier: true,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
