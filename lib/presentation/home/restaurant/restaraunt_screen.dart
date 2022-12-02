import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/organization/bloc/org_bloc.dart';
import 'package:kursach/presentation/home/markets/market_widget.dart';
import 'package:kursach/presentation/home/restaurant/mainpage/restaraunt_mainpage.dart';
import 'package:kursach/presentation/home/restaurant/pickers.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestarauntList extends StatefulWidget {
  const RestarauntList({Key? key}) : super(key: key);

  @override
  State<RestarauntList> createState() => _RestarauntListState();
}

class _RestarauntListState extends State<RestarauntList> {
  Map<String, dynamic> categories = {
    'Бургеры': {'status': false, 'icon': FontAwesomeIcons.burger},
    'Пицца': {'status': false, 'icon': FontAwesomeIcons.pizzaSlice},
    'Суши': {'status': false, 'icon': FontAwesomeIcons.fish},
    'На вынос': {'status': false, 'icon': FontAwesomeIcons.getPocket},
    'Азиатское': {'status': false, 'icon': FontAwesomeIcons.wolfPackBattalion},
    'Русское': {'status': false, 'icon': FontAwesomeIcons.martiniGlassEmpty}
  };
  late List<OrganizationModel> currentOrgs;

  @override
  void initState() {
    currentOrgs = [];
    context.read<OrganizationBloc>().add(OrganizationEvent.loadOrganizations(
        sort: sortType.ascending, address: UserModel.get().addresses!.first));
    super.initState();
  }

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
                title: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: Row(
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
                          UserModel.get().addresses!.first.toString(),
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: BlocBuilder<OrganizationBloc, OrganizationState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          orElse: () => Container(),
                          loading: () => Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GradientMask(
                                    size: 40,
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    child: Text(
                                      "Загрузка",
                                      textScaleFactor: 1.6,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: Colors.white54),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  CircularProgressIndicator.adaptive()
                                ],
                              ),
                          usersOrganizationsLoaded: (models) => models.isEmpty
                              ? Text("Тут ничего нет")
                              : SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height - 115,
                                  child: RefreshIndicator(
                                    onRefresh: () async => context
                                        .read<OrganizationBloc>()
                                        .add(
                                            OrganizationEvent.loadOrganizations(
                                                sort: sortType.none,
                                                address: UserModel.get()
                                                    .addresses!
                                                    .first)),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        itemBuilder: (ctx, index) {
                                          return InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (ctx) =>
                                                        RestarauntMainPage(
                                                            currentOrg: models[
                                                                index]))),
                                            child: MarketWidget(
                                              model: models[index],
                                            ),
                                          );
                                        },
                                        itemCount: models.length),
                                  ),
                                ));
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
