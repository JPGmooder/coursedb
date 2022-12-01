import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/cart/bloc/cart_bloc.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/outstanding/brand_widget.dart';
import 'package:kursach/presentation/outstanding/category_chip.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen(
      {Key? key,
      this.defaultCount,
      required this.currentProduct,
      required this.currentOrg})
      : super(key: key);
  ProductModel currentProduct;
  OrganizationModel currentOrg;
  int? defaultCount;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late ExpandableController _controller;

  @override
  void dispose() {
    _controller.dispose();
    
    super.dispose();
  }

  @override
  void initState() {
    _controller = ExpandableController(
      initialExpanded: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CarouselSlider.builder(
                      itemCount: widget.currentProduct.photoAlbum.length,
                      itemBuilder: (ctx, index, realIndex) =>
                          CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  widget.currentProduct.photoAlbum[index]),
                      options: CarouselOptions(
                        viewportFraction: 1,
                        autoPlay: true,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          widget.currentProduct.name,
                          style: Theme.of(context).textTheme.titleLarge,
                          textScaleFactor: 0.8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              CategoryChip(
                                  color: widget.currentProduct.category.color,
                                  label: widget.currentProduct.category.label,
                                  isSelected: true),
                              if (widget.currentProduct.categoryS != null)
                                CategoryChip(
                                    color:
                                        widget.currentProduct.categoryS!.color,
                                    label:
                                        widget.currentProduct.categoryS!.label,
                                    isSelected: true),
                              if (widget.currentProduct.categoryT != null)
                                CategoryChip(
                                    color:
                                        widget.currentProduct.categoryT!.color,
                                    label:
                                        widget.currentProduct.categoryT!.label,
                                    isSelected: true),
                            ],
                          ),
                        ),
                        Text(
                          widget.currentProduct.quantity > 20
                              ? "В наличии"
                              : widget.currentProduct.quantity == 0
                                  ? "Нет в наличии"
                                  : "Осталось ${widget.currentProduct.quantity} шт.",
                          textScaleFactor: 1.2,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: widget.currentProduct.quantity > 20
                                      ? Colors.grey
                                      : Colors.red[400]),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  "Торговая марка",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Divider(),
                                BrandWidget(brand: widget.currentProduct.brand),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Описание",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        ExpandablePanel(
                          controller: _controller,
                          theme: ExpandableThemeData(),
                          collapsed: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                widget.currentProduct.description,
                                maxLines: 2,
                                overflow: TextOverflow.fade,
                                style: Theme.of(context).textTheme.labelMedium,
                                textScaleFactor: 1.3,
                              ),
                              IconButton(
                                  onPressed: () => setState(() {
                                        _controller.toggle();
                                      }),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                widget.currentProduct.description,
                                overflow: TextOverflow.fade,
                                style: Theme.of(context).textTheme.labelMedium,
                                textScaleFactor: 1.3,
                              ),
                              IconButton(
                                  onPressed: () => setState(() {
                                        _controller.toggle();
                                      }),
                                  icon: Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                        ),
                        BottomProductPage(
                          updateParent: (currentQuantity) {
                            setState(() {
                              widget.currentProduct.quantity = currentQuantity;
                            });
                          },
                          currentOrg: widget.currentOrg,
                          product: widget.currentProduct,
                        )
                      ],
                    ),
                  )
                ],
              ),
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios_new)),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomProductPage extends StatefulWidget {
  const BottomProductPage({
    Key? key,
    required this.product,
    required this.currentOrg,
    required this.updateParent,
  }) : super(key: key);
  final ProductModel product;
  final OrganizationModel currentOrg;
  final void Function(int quantity) updateParent;
  @override
  State<BottomProductPage> createState() => _BottomProductPageState();
}

class _BottomProductPageState extends State<BottomProductPage> {
  late int count;
  late StreamController<Map<String, dynamic>> _productController;
  @override
  void initState() {
    _productController = StreamController<Map<String, dynamic>>();

    count = 1;

    _productController.stream
        .distinct()
        .debounceTime(Duration(milliseconds: 500))
        .listen((event) {
      Future.delayed(Duration.zero).then((value) => widget
          .updateParent(widget.product.quantity -= event['quantity'] as int));
      var orderedCount = event['quantity'];
      var actualCart =
          UserModel.get().carts.firstWhere((element) => element.isActive);
      var index = actualCart.items
          .indexWhere((element) => element.productId == event['productId']);
      if (index != -1) {
        orderedCount += actualCart.items[index].amount;
      }
      actualCart.manageCartItems(context, widget.currentOrg.loadedProduct,
          orderedCount, event['productId'],
          isPassCheck: false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: count > 1
                      ? () => setState(() {
                            count--;

                            _productController.add({
                              'productId': widget.product.productId,
                              'quantity': count
                            });
                          })
                      : null,
                  icon: Icon(Icons.remove)),
              GradientMask(
                  size: 100,
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  child: Text(
                    count.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Colors.white54),
                  )),
              IconButton(
                  onPressed: count < widget.product.quantity
                      ? () => setState(() {
                            count++;
                          })
                      : null,
                  icon: Icon(Icons.add))
            ],
          ),
        ),
        BlocListener<CartBloc, CartState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () => null,
                  itemManaged: ((managedItem) {
                    UserModel.get()
                        .carts
                        .firstWhere((element) => element.isActive)
                        .addItemToList(managedItem!);
                  }));
            },
            child: count > widget.product.quantity
                ? NeumorphicButton(child: Text("Нет в наличии"))
                : GradientMask(
                    size: 120,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    child: NeumorphicButton(
                      onPressed: () => _productController.add({
                        'productId': widget.product.productId,
                        'quantity': count
                      }),
                      style: NeumorphicStyle(color: Colors.white70),
                      child: Text(
                        'Добавить ${(count * widget.product.price).toInt()} руб.',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ))
      ],
    );
  }
}
