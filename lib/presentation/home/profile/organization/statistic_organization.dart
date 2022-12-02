import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/product_type_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/organization/bloc/org_bloc.dart';
import 'package:kursach/presentation/outstanding/product/product_screen.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticOrganizationScreen extends StatefulWidget {
  StatisticOrganizationScreen({Key? key}) : super(key: key);

  @override
  State<StatisticOrganizationScreen> createState() =>
      _StatisticOrganizationScreenState();
}

class _StatisticOrganizationScreenState
    extends State<StatisticOrganizationScreen> {
  Map<ProductModel, Map<DateTime, int>>? statisticMap;
  Map<ProductTypeModel, Map<DateTime, int>>? typeStatisticMap;

  Map<ProductModel, int>? productOfWeek;
  Map<ProductModel, int>? productOfMonth;

  @override
  void initState() {
    context.read<OrganizationBloc>().add(
        OrganizationEvent.loadOrganizationStatistic(
            companyId: UserModel.get().organizationModel!.idCompany));
    super.initState();
  }

  Map<ProductTypeModel, Map<DateTime, int>> getProductTypes(
      Map<ProductModel, Map<DateTime, int>>? statistic) {
    Map<ProductTypeModel, Map<DateTime, int>> mapToReturn = {};
    for (var element in statistic!.entries) {
      if (mapToReturn.containsKey(element.key)) {
        List<MapEntry<DateTime, int>> currentEntries = [];
        for (var subEntry in element.value.entries) {
          var index = currentEntries.indexWhere(
              (element) => DateUtils.isSameDay(element.key, subEntry.key));
          if (index != -1) {
            currentEntries[index] = MapEntry(currentEntries[index].key,
                currentEntries[index].value + subEntry.value);
          } else {
            currentEntries.add(MapEntry(subEntry.key, subEntry.value));
          }
        }
        mapToReturn[element]!.addEntries(currentEntries);
      } else {
        mapToReturn.addAll({element.key.category: element.value});
      }
    }
    return mapToReturn;
  }

  Map<ProductModel, int> getProductOfWeek(
      Map<ProductModel, Map<DateTime, int>>? statistic, int days) {
    int score = 0;
    late ProductModel currentProduct;
    for (var element in statistic!.entries) {
      var currentScore = 0;
      element.value.entries
          .where(
              (element) => DateTime.now().difference(element.key).inDays < days)
          .forEach((element) {
        currentScore += element.value;
      });
      if (score < currentScore) {
        currentProduct = element.key;
        score = currentScore;
      }
    }
    return {currentProduct: score};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<OrganizationBloc, OrganizationState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () => null,
              statisticLoaded: (statisticMap) {
                setState(() {
                  this.statisticMap = statisticMap;
                  productOfWeek = getProductOfWeek(statisticMap, 7);
                  productOfMonth = getProductOfWeek(statisticMap, 31);
                  typeStatisticMap = getProductTypes(statisticMap);
                  print(typeStatisticMap);
                });
              });
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              backgroundColor: Theme.of(context).colorScheme.surface,
              title: Text(
                "Статистика заказов",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SliverToBoxAdapter(
              child: Wrap(
                children: productOfMonth == null || productOfMonth == null
                    ? List.generate(
                        2,
                        (index) => Shimmer.fromColors(
                              baseColor: Color.fromARGB(255, 228, 228, 228),
                              highlightColor: Colors.white,
                              child: Card(
                                child: Column(children: [
                                  Text(
                                    index == 0
                                        ? "Товар месяца"
                                        : "Товар недели",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                  ),
                                  Text(
                                    "Продано за неделю ",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  )
                                ]),
                              ),
                            ))
                    : List.generate(
                        2,
                        (index) => SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Builder(builder: (ctxer) {
                                return InkWell(
                                  onTap: () => showBottomSheet(
                                      context: ctxer,
                                      builder: (ctx) {
                                        return ProductScreen(
                                            currentOrg: UserModel.get()
                                                .organizationModel!,
                                            currentProduct: index == 0
                                                ? productOfMonth!.keys.first
                                                : productOfWeek!.keys.first);
                                      }),
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        Text(
                                          index == 0
                                              ? "Товар месяца"
                                              : "Товар недели",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.35,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: CachedNetworkImage(
                                                  imageUrl: index == 0
                                                      ? productOfMonth!
                                                          .keys
                                                          .first
                                                          .photoAlbum
                                                          .first
                                                      : productOfWeek!
                                                          .keys
                                                          .first
                                                          .photoAlbum
                                                          .first),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          index == 0
                                              ? productOfMonth!.keys.first.name
                                              : productOfWeek!.keys.first.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                        Text(
                                          textAlign: TextAlign.center,
                                          index == 0
                                              ? "Продано за месяц ${productOfMonth!.values.first}"
                                              : "Продано за неделю ${productOfWeek!.values.first}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                          textScaleFactor: 0.8,
                                        )
                                      ]),
                                    ),
                                  ),
                                );
                              }),
                            )),
              ),
            ),
            if (typeStatisticMap != null)
              SliverToBoxAdapter(
                child: Card(
                  child: SfCartesianChart(
                    title: ChartTitle(text: "Статистика категорий"),
                    primaryXAxis: CategoryAxis(),
                    legend: Legend(
                      alignment: ChartAlignment.far,
                      isVisible: true,
                      orientation: LegendItemOrientation.horizontal,
                      position: LegendPosition.bottom,
                      overflowMode: LegendItemOverflowMode.wrap,
                      toggleSeriesVisibility: true,
                      borderColor: AppsColors.accentColor,
                      itemPadding: 5,
                      title: LegendTitle(
                          text: "Легенда",
                          textStyle: Theme.of(context).textTheme.titleMedium),
                      isResponsive: true,
                      legendItemBuilder:
                          (legendText, series, point, seriesIndex) {
                        var currentSeries =
                            (series as LineSeries<Map<DateTime, int>, String>);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                currentSeries.legendItemText!,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: currentSeries.color),
                              ),
                              Divider(
                                color: currentSeries.color,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    series: typeStatisticMap!.entries.map((element) {
                      var currentDataSource = element.value.entries
                          .map((e) => {e.key: e.value})
                          .toList();
                      return LineSeries<Map<DateTime, int>, String>(
                          color: element.key.color,
                          legendItemText: element.key.label,
                          dataSource: currentDataSource,
                          xValueMapper: (currentMap, index) =>
                              DateFormat.Md().format(currentMap.keys.first),
                          yValueMapper: (currentMap, index) =>
                              int.parse(currentMap.values.first.toString()));
                    }).toList(),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
