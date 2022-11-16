import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/cart/bloc/cart_bloc.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kursach/domain/product/bloc/product_bloc.dart';
import 'package:kursach/presentation/home/cart/cart_item_widget.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  OrganizationModel? orgModel;
  List<ProductModel>? orderedProducts;

  @override
  void initState() {
    var items =
        UserModel.get().carts.firstWhere((element) => element.isActive).items;
    context.read<CartBloc>().add(
        CartEvent.loadProductsById(items.map((e) => e.productId).toList()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => CircularProgressIndicator(),
              empty: () {
                orderedProducts = [];
                return Text("Тут ничего нет");
              },
              itemManaged: (managedItem) {
                UserModel.get()
                    .carts
                    .firstWhere((element) => element.isActive)
                    .addItemToList(managedItem!);

                var items = UserModel.get()
                    .carts
                    .firstWhere((element) => element.isActive)
                    .items;
                context.read<CartBloc>().add(CartEvent.loadProductsById(
                    items.map((e) => e.productId).toList()));

                return CircularProgressIndicator();
              },
              cartToOrderCompleted: (order, newCart) {
                UserModel.get().orders!.add(order);
                UserModel.get().addNewCart(newCart);
                return Text("Тут ничего нет");
              },
              productsByIdLoaded: ((products, organizations) {
                if (organizations.isNotEmpty) {
                  orgModel = organizations.first;
                }

                orderedProducts = [...products];
                if (orderedProducts!.isEmpty) {
                  context.read<CartBloc>().emit(CartState.empty());
                }
                return CartBody(
                    onDelete: (e) {
                      setState(() {
                        orderedProducts!.remove(e);
                        UserModel.get()
                            .carts
                            .firstWhere((element) => element.isActive)
                            .items
                            .removeWhere(
                                (element) => element.productId == e.productId);
                      });
                      context.read<CartBloc>().add(CartEvent.manageCartItem(
                          userLogin: UserModel.get().login,
                          productQuantity: 0,
                          productId: e.productId));
                    },
                    items: UserModel.get()
                        .carts
                        .firstWhere((element) => element.isActive)
                        .items,
                    orderedProducts: orderedProducts!,
                    orgModel: organizations.first);
              }),
              orElse: () => CircularProgressIndicator());
        },
      ),
    );
  }
}

class CartBody extends StatelessWidget {
  CartBody(
      {Key? key,
      required this.orderedProducts,
      required this.orgModel,
      required this.onDelete,
      required this.items})
      : super(key: key);

  List<ProductModel> orderedProducts;
  OrganizationModel? orgModel;
  List<CartItemModel> items;
  void Function(ProductModel e) onDelete;

  int getPrice() => orderedProducts
      .map((e) =>
          e.price *
          items
              .firstWhere((element) => element.productId == e.productId)
              .amount)
      .toList()
      .reduce((value, element) => value + element)
      .toInt();

  int getAmount() =>
      items.map((e) => e.amount).reduce((value, element) => value + element);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        leading: Icon(Icons.delete),
        actions: [Icon(Icons.menu_rounded)],
        backgroundColor: Colors.transparent,
        expandedHeight: 150,
        flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(left: 45, top: 10, bottom: 10),
            title: orderedProducts.isNotEmpty
                ? Text(
                    "${getAmount()} товаров на ${getPrice()} р.",
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                : null),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
          child: Column(children: [
            ...orderedProducts
                .map((e) => CartItemWidget(
                      onDelete: (_) => onDelete(e),
                      count: items
                          .firstWhere(
                              (element) => element.productId == e.productId)
                          .amount,
                      product: e,
                      currentOrg: orgModel,
                    ))
                .toList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                children: [
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Доставка",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      GradientMask(
                        size: 50,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        child: Text(
                          orgModel == null
                              ? "Загрузка.."
                              : "${orgModel!.companyDeliveryPrice.toString()} р.",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.white54),
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Итого",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      GradientMask(
                        size: 50,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        child: Text(
                          orgModel == null
                              ? "Загрузка.."
                              : "${getPrice() + orgModel!.companyDeliveryPrice} р.",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.white54),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GradientMask(
                size: 200,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                child: NeumorphicButton(
                    style: NeumorphicStyle(color: Colors.white54),
                    onPressed: () => context.read<CartBloc>().add(
                        CartEvent.createOrder(
                            cartId:
                                UserModel.get()
                                    .carts
                                    .firstWhere((element) => element.isActive)
                                    .cartID,
                            itemsPrice: getPrice().toDouble(),
                            deliveryPrice:
                                orgModel!.companyDeliveryPrice.toDouble(),
                            addressId: UserModel.get()
                                .addresses!
                                .firstWhere((element) => element.isActive)
                                .id_address)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Оформить доставку",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            orgModel == null
                                ? "Загрузка.."
                                : "${getPrice() + orgModel!.companyDeliveryPrice} р.",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )),
              ),
            )
          ]),
        ),
      )
    ]);
  }
}
