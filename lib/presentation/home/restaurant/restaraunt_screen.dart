import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/presentation/home/markets/market_widget.dart';
import 'package:kursach/presentation/home/restaurant/pickers.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class RestarauntList extends StatefulWidget {
  const RestarauntList({Key? key}) : super(key: key);

  @override
  State<RestarauntList> createState() => _RestarauntListState();
}

class _RestarauntListState extends State<RestarauntList> {
  bool isPressed = false;
  Map<String, dynamic> categories = {
    'Бургеры': {'status': false, 'icon': FontAwesomeIcons.burger},
    'Пицца': {'status': false, 'icon': FontAwesomeIcons.pizzaSlice},
    'Суши': {'status': false, 'icon': FontAwesomeIcons.fish},
    'На вынос': {'status': false, 'icon': FontAwesomeIcons.getPocket},
    'Азиатское': {'status': false, 'icon': FontAwesomeIcons.wolfPackBattalion},
    'Русское': {'status': false, 'icon': FontAwesomeIcons.martiniGlassEmpty}
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (ctx, isScrollerd) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                forceElevated: isScrollerd,
                backgroundColor: Theme.of(context).colorScheme.surface,
                title: Row(
                  children: [
                    Text(
                      "Текущий адрес: ",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    ),
                    GradientMask(
                      size: 35,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      child: Text(
                        "Чкалова 7",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white54),
                      ),
                    ),
                    GradientMask(
                      size: 15,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2, top: 8.0),
                        child: Icon(
                          Icons.location_history,
                          color: Colors.white38,
                        ),
                      ),
                    )
                  ],
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(110),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                    child: SizedBox(
                      height: 100,
                      child: ListView.separated(
                          separatorBuilder: (ctx, index) => SizedBox(
                                width: 15,
                              ),
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) => FoodPicker(
                              isPressed:
                                  categories.values.elementAt(index)['status'],
                              onChanged: (value) => setState(() {
                                    categories[categories.keys.elementAt(index)]
                                        ['status'] = value;
                                  }),
                              text: categories.keys.elementAt(index),
                              icon: categories.values.elementAt(index)['icon']),
                          itemCount: categories.entries.length),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Продукты",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.grey[600]),
                      textScaleFactor: 0.8,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return MarketWidget(
                              isDostavka: true,
                            );
                          },
                          separatorBuilder: (ctx, index) {
                            return Container();
                          },
                          itemCount: 3),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
