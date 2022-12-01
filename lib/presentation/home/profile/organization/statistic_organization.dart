import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/organization/bloc/org_bloc.dart';
import 'package:kursach/presentation/outstanding/product/product_screen.dart';
import 'package:shimmer/shimmer.dart';

class StatisticOrganizationScreen extends StatefulWidget {
  StatisticOrganizationScreen({Key? key}) : super(key: key);

  @override
  State<StatisticOrganizationScreen> createState() =>
      _StatisticOrganizationScreenState();
}

class _StatisticOrganizationScreenState
    extends State<StatisticOrganizationScreen> {
  Map<ProductModel, Map<DateTime, int>>? statisticMap;
  Map<ProductModel, int>? productOfWeek;
  Map<ProductModel, int>? productOfMonth;

  @override
  void initState() {
    context.read<OrganizationBloc>().add(
        OrganizationEvent.loadOrganizationStatistic(
            companyId: UserModel.get().organizationModel!.idCompany));
    super.initState();
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
            )
          ],
        ),
      ),
    );
  }
}
