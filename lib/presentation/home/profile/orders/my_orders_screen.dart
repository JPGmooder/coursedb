import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/orders/bloc/orders_bloc.dart';
import 'package:kursach/presentation/home/profile/orders/my_orders_detailed.dart';
import 'package:kursach/presentation/home/restaurant/restaraunt_screen.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:kursach/presentation/outstanding/notfound_screen.dart';
import 'package:kursach/presentation/outstanding/product/product_screen.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:rxdart/rxdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MyOrdersScreen extends StatefulWidget {
  MyOrdersScreen({Key? key, this.isCourier = false}) : super(key: key);
  bool isCourier;
  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  List<Map<String, dynamic>>? currentOrders;

  Map<DateTime, List<Map<String, dynamic>>> parseList(
      {List<Map<String, dynamic>>? orders}) {
    if (orders != null) {
      currentOrders = [...orders];
    }
    currentOrders!.sort((a, b) => (a['cart'] as CartModel)
        .creationDate
        .compareTo((b['cart'] as CartModel).creationDate));
    late Map<DateTime, List<Map<String, dynamic>>> listToMap;
    DateTime? lastDate;
    for (Map<String, dynamic> element in currentOrders!.reversed) {
      var elementDate =
          DateUtils.dateOnly((element['cart'] as CartModel).creationDate);
      if (lastDate == null) {
        lastDate = elementDate;
        listToMap = {
          lastDate: [element]
        };
      } else {
        if (DateUtils.isSameDay(lastDate, elementDate)) {
          listToMap[lastDate]!.add(element);
        } else {
          lastDate = elementDate;
          listToMap.addAll({
            lastDate: [element]
          });
        }
      }
    }
    return listToMap;
  }

  @override
  void initState() {
    if (widget.isCourier) {
      context.read<OrdersBloc>().add(
          OrdersEvent.loadCouriersOrders(userLogin: UserModel.get().login));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () {
                  if (currentOrders == null) {
                    return LoadingWidget();
                  } else {
                    var listToMap = parseList();
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomScrollView(slivers: [
                        ...listToMap.entries
                            .map((e) => Section(
                                ordersAmount: e.value.length,
                                title:
                                    DateFormat("d MMMM y", 'ru').format(e.key),
                                items: e.value.map((e) {
                                  var cart = e['cart'] as CartModel;
                                  var order = e['order'] as OrderModel;
                                  return OrderWidget(
                                      isCarted: false,
                                      isCourier: widget.isCourier,
                                      order: order,
                                      cart: cart);
                                }).toList()))
                            .toList()
                      ]),
                    );
                  }
                },
                couriersOrdersLoaded: widget.isCourier
                    ? (orders) {
                        if (orders.isEmpty) {
                          return NotFoundScreen(
                              text:
                                  "???????????? ???? ?????? ???? ?????????????????? ???? ???????????? ????????????.");
                        } else {
                          var listToMap = parseList(orders: orders);
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomScrollView(slivers: [
                              SliverAppBar(
                                iconTheme: IconThemeData(color: Colors.black),
                                title: Text(
                                  "?????? ????????????",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                pinned: true,
                                backgroundColor:
                                    Theme.of(context).colorScheme.surface,
                              ),
                              ...listToMap.entries
                                  .map((e) => Section(
                                      ordersAmount: e.value.length,
                                      title: DateFormat("d MMMM y", 'ru')
                                          .format(e.key),
                                      items: e.value.map((e) {
                                        var cart = e['cart'] as CartModel;
                                        var order = e['order'] as OrderModel;
                                        return OrderWidget(
                                            isCarted: false,
                                            isCourier: widget.isCourier,
                                            order: order,
                                            cart: cart);
                                      }).toList()))
                                  .toList()
                            ]),
                          );
                        }
                      }
                    : null,
                usersOrdersLoaded: widget.isCourier
                    ? null
                    : (orders) {
                        if (orders.isEmpty) {
                          return NotFoundScreen(
                              text:
                                  "???????????? ???? ?????? ???? ?????????????????? ???????? ???????????? ??????????.");
                        } else {
                          var listToMap = parseList(orders: orders);
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomScrollView(slivers: [
                              SliverAppBar(
                                iconTheme: IconThemeData(color: Colors.black),
                                title: Text(
                                  "?????? ????????????",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                pinned: true,
                                backgroundColor:
                                    Theme.of(context).colorScheme.surface,
                              ),
                              ...listToMap.entries
                                  .map((e) => Section(
                                      ordersAmount: e.value.length,
                                      title: DateFormat("d MMMM y", 'ru')
                                          .format(e.key),
                                      items: e.value.map((e) {
                                        var cart = e['cart'] as CartModel;
                                        var order = e['order'] as OrderModel;
                                        return OrderWidget(
                                            isCarted: false,
                                            isCourier: widget.isCourier,
                                            order: order,
                                            cart: cart);
                                      }).toList()))
                                  .toList()
                            ]),
                          );
                        }
                      });
          },
        ),
      ),
    );
  }
}

class OrderWidget extends StatefulWidget {
  const OrderWidget({
    Key? key,
    required this.isCarted,
    required this.isCourier,
    required this.order,
    required this.cart,
  }) : super(key: key);
  final bool isCourier;
  final bool isCarted;
  final OrderModel order;
  final CartModel cart;

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  late ExpandableController _controller;
  List<ProductModel>? orderedProducts;
  OrganizationModel? organization;
  Future<Map<String, dynamic>>? _loader;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = ExpandableController();
    _controller.addListener(() {
      if (_controller.expanded) {
        setState(() {
          _loader = OrdersRepository.loadOrdersProducts(
              ids: widget.cart.items.map((e) => e.productId).toList());
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpandablePanel(
            controller: _controller,
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "?????????? ???${widget.order.idOrder} ???? ?????????? ${widget.order.orderPrice}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            collapsed: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "  ${DateFormat("Hm", 'ru').format(widget.cart.creationDate)}",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      widget.order.orderStatusName.name,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ],
            ),
            expanded: FutureBuilder(
              future: _loader,
              builder: (context, snap) {
                if (!snap.hasData) {
                  return CircularProgressIndicator();
                } else {
                  var products =
                      (snap.data! as Map<String, dynamic>)['products'];
                  var organization =
                      (snap.data! as Map<String, dynamic>)['company'];
                  var productsAmount = widget.cart.items
                      .map((e) => e.amount)
                      .reduce((value, element) => value + element);
                  orderedProducts = [...products];
                  this.organization = organization;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Text(
                              "${productsAmount == 1 ? "1 ??????????" : productsAmount < 5 ? "$productsAmount ????????????" : "$productsAmount ??????????????"} ???? ${this.organization!.companyName}",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          if (widget.order.orderStatusName.step ==
                                  OrderStep.delivery ||
                              widget.order.orderStatusName.step ==
                                  OrderStep.waiting)
                            Expanded(
                              flex: 1,
                              child: GradientMask(
                                size: 50,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                child: IconButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) =>
                                                MyOrdersDetailedScreen(
                                                  order: widget.order,
                                                  cart: widget.cart,
                                                  organization: organization,
                                                  products: products,
                                                ))),
                                    icon: Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                    )),
                              ),
                            )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          children: orderedProducts!
                              .map((e) => Card(
                                    child: InkWell(
                                      onTap: () => showBottomSheet(
                                          context: context,
                                          builder: (ctx) => ProductScreen(
                                              currentProduct: e,
                                              isCourier: widget.isCourier,
                                              isCarted: widget.isCarted,
                                              currentOrg: this.organization!)),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5.0),
                                        child: Column(
                                          children: [
                                            SizedBox.square(
                                              dimension: 74,
                                              child: CachedNetworkImage(
                                                  fit: BoxFit.fill,
                                                  imageUrl: e.photoAlbum.first),
                                            ),
                                            Text(
                                              "${widget.cart.items.firstWhere((element) => element.productId == e.productId).amount} ????.",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                            ),
                                            Text(
                                              "${e.price} ??.",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "  ${DateFormat("Hm", 'ru').format(widget.cart.creationDate)}",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            widget.order.orderStatusName.name,
                            style: Theme.of(context).textTheme.labelMedium,
                          )
                        ],
                      ),
                    ],
                  );
                }
              },
            )),
      ),
    );
  }
}

class Section extends MultiSliver {
  Section({
    Key? key,
    required String title,
    required int ordersAmount,
    Color headerColor = Colors.white,
    Color titleColor = Colors.black,
    required List<Widget> items,
  }) : super(
          key: key,
          pushPinnedChildren: true,
          children: [
            SliverPinnedHeader(
                child: ColoredBox(
              color: headerColor,
              child: ListTile(
                textColor: titleColor,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title),
                    Text(ordersAmount == 1
                        ? "1 ??????????"
                        : ordersAmount < 5
                            ? "$ordersAmount ????????????"
                            : "$ordersAmount ??????????????"),
                  ],
                ),
              ),
            )),
            SliverList(
              delegate: SliverChildListDelegate.fixed(items),
            ),
          ],
        );
}
