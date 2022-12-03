import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/domain/cart/bloc/cart_bloc.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/organization/bloc/org_bloc.dart';
import 'package:kursach/presentation/home/markets/market_widget.dart';
import 'package:kursach/presentation/home/restaurant/mainpage/restaraunt_mainpage.dart';
import 'package:kursach/presentation/home/restaurant/pickers.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RestarauntList extends StatefulWidget {
  const RestarauntList({Key? key}) : super(key: key);

  @override
  State<RestarauntList> createState() => _RestarauntListState();
}

class _RestarauntListState extends State<RestarauntList> {
  late TextEditingController _searcher;

  Map<String, dynamic> categories = {
    'Продукты': {'status': false, 'icon': Icons.shopping_bag_sharp},
    'Рестораны': {'status': false, 'icon': FontAwesomeIcons.pizzaSlice},
    'Рынки': {'status': false, 'icon': FontAwesomeIcons.fish},
    'Аптеки': {'status': false, 'icon': FontAwesomeIcons.houseMedical},
    'Книжные': {'status': false, 'icon': FontAwesomeIcons.book},
    'Другое': {'status': false, 'icon': FontAwesomeIcons.star}
  };
  late List<OrganizationModel> currentOrgs;

  @override
  void initState() {
    _searcher = TextEditingController();
    _searcher.addListener(() {
      setState(() {});
    });
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
                  child: InkWell(
                    onTap: () => showModalBottomSheet(
                        context: context,
                        builder: (ctx) {
                          return Card(
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.4,
                              child: ListView.builder(
                                  itemCount: UserModel.get().addresses!.length,
                                  itemBuilder: (ctx, index) {
                                    var currentAddress =
                                        UserModel.get().addresses![index];
                                    return RadioListTile<int>(
                                        title: Text(
                                          currentAddress.name!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        subtitle: Text(
                                          "${currentAddress.city}, ${currentAddress.street} ${currentAddress.housenumber}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                        value: currentAddress.id_address,
                                        groupValue: UserModel.get()
                                            .addresses!
                                            .first
                                            .id_address,
                                        onChanged: (value) {
                                          if (value !=
                                              UserModel.get()
                                                  .addresses!
                                                  .first
                                                  .id_address) {
                                            showDialog(
                                                context: context,
                                                builder: (ctx) => AlertDialog(
                                                      content: Text(
                                                        "Смена адреса приведёт к очистке текущей корзины, желаете продолжить?",
                                                      ),
                                                      actionsAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      actions: [
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors.red[
                                                                            200]),
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    context),
                                                            child: Text(
                                                              "Отмена",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .labelMedium!
                                                                  .copyWith(
                                                                      color: Colors
                                                                          .white),
                                                            )),
                                                        GradientMask(
                                                          size: 250,
                                                          begin:
                                                              Alignment.topLeft,
                                                          end: Alignment
                                                              .bottomRight,
                                                          child: ElevatedButton(
                                                              style: ElevatedButton
                                                                  .styleFrom(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white54),
                                                              onPressed: () {
                                                                UserModel.get()
                                                                    .addresses = [
                                                                  ...UserModel
                                                                          .get()
                                                                      .addresses!
                                                                ];
                                                                var curIndex = UserModel
                                                                        .get()
                                                                    .addresses!
                                                                    .indexWhere((element) =>
                                                                        element
                                                                            .id_address ==
                                                                        value);
                                                                setState(() {
                                                                  var currentAddress =
                                                                      UserModel.get()
                                                                              .addresses![
                                                                          curIndex];
                                                                  UserModel.get()
                                                                          .addresses![
                                                                      curIndex] = UserModel
                                                                          .get()
                                                                      .addresses![0];
                                                                  UserModel.get()
                                                                          .addresses![0] =
                                                                      currentAddress;
                                                                });
                                                                var currentCart = UserModel
                                                                        .get()
                                                                    .carts
                                                                    .firstWhere(
                                                                        (element) =>
                                                                            element.isActive);
                                                                for (var element
                                                                    in currentCart
                                                                        .items) {
                                                                  context.read<CartBloc>().add(CartEvent.manageCartItem(
                                                                      userLogin:
                                                                          UserModel.get()
                                                                              .login,
                                                                      productQuantity:
                                                                          0,
                                                                      productId:
                                                                          element
                                                                              .productId));
                                                                }
                                                                // context
                                                                //     .read<
                                                                //         CartBloc>()
                                                                //     .add(CartEvent
                                                                //         .clearCartEvent(
                                                                //             cartId:
                                                                //                 currentCart.cartID));
                                                                UserModel.get()
                                                                    .carts
                                                                    .firstWhere(
                                                                        (element) =>
                                                                            element.isActive)
                                                                    .items
                                                                    .clear();
                                                                context.read<OrganizationBloc>().add(OrganizationEvent.loadOrganizations(
                                                                    sort: sortType
                                                                        .ascending,
                                                                    address: UserModel
                                                                            .get()
                                                                        .addresses!
                                                                        .first));
                                                                Navigator.pop(
                                                                    ctx);
                                                              },
                                                              child: Text(
                                                                "Принять",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .labelMedium!,
                                                              )),
                                                        )
                                                      ],
                                                    ));
                                          }
                                        });
                                  }),
                            ),
                          );
                        }),
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
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(168),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: ListView.separated(
                              separatorBuilder: (ctx, index) => SizedBox(
                                    width: 15,
                                  ),
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, index) => FoodPicker(
                                  isPressed: categories.values
                                      .elementAt(index)['status'],
                                  onChanged: (value) => setState(() {
                                        categories[categories.keys
                                                .elementAt(index)]['status'] =
                                            value;
                                      }),
                                  text: categories.keys.elementAt(index),
                                  icon: categories.values
                                      .elementAt(index)['icon']),
                              itemCount: categories.entries.length),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              controller: _searcher,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  suffixIcon: Icon(Icons.search),
                                  hintText: "Введите поисковой запрос"),
                            ),
                          ),
                        )
                      ],
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
                          usersOrganizationsLoaded: (models) {
                            var pickedCategories = categories.entries.where(
                                (element) => element.value['status'] == true);
                            if (pickedCategories.isNotEmpty) {
                              models = models
                                  .where((element) => pickedCategories
                                      .where((cateogry) =>
                                          element.companyTypeName ==
                                          cateogry.key)
                                      .isNotEmpty)
                                  .toList();
                            }
                            if (_searcher.text.isNotEmpty) {
                              models = models
                                  .where((element) => element.companyName
                                      .contains(_searcher.text.trim()))
                                  .toList();
                            }
                            if (models.isEmpty) {
                              return Text("Тут ничего нет");
                            } else {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height - 115,
                                child: RefreshIndicator(
                                  onRefresh: () async => context
                                      .read<OrganizationBloc>()
                                      .add(OrganizationEvent.loadOrganizations(
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
                                                          currentOrg:
                                                              models[index]))),
                                          child: MarketWidget(
                                            model: models[index],
                                          ),
                                        );
                                      },
                                      itemCount: models.length),
                                ),
                              );
                            }
                          });
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
