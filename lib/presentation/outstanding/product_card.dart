import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/cart/bloc/cart_bloc.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/home/profile/organization/product_editor.dart';
import 'package:kursach/presentation/outstanding/category_chip.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:rxdart/rxdart.dart';

class ProductCard extends StatefulWidget {
  ProductCard(
      {Key? key,
      this.currentOrg,
      this.productModel,
      this.showProductFunct,
      this.isReadctorMode = false})
      : super(key: key);
  OrganizationModel? currentOrg;
  ProductModel? productModel;
  bool isReadctorMode;
  void Function(ProductModel)? showProductFunct;
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int count = 0;
  StreamController<Map<String, dynamic>>? _productController;

  @override
  void dispose() {
    _productController?.close();
    super.dispose();
  }

  @override
  void initState() {
    if (!widget.isReadctorMode &&
        widget.productModel != null &&
        widget.currentOrg != null) {
      _productController = StreamController<Map<String, dynamic>>();
      var actualCart =
          UserModel.get().carts.firstWhere((element) => element.isActive);
      var index = actualCart.items.indexWhere(
          (element) => element.productId == widget.productModel!.productId);

      UserModel.get().addListener(() {
        setState(() {
          count = 0;
        });
      });

      if (index != -1) {
        count = actualCart.items[index].amount;
      }
      _productController!.stream
          .distinct()
          .debounceTime(Duration(seconds: 1))
          .listen((event) {
        var actualCart =
            UserModel.get().carts.firstWhere((element) => element.isActive);
        actualCart.manageCartItems(context, widget.currentOrg!.loadedProduct,
            event['quantity'], event['productId']);
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.productModel == null) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => ProductEditorScreen()));
        } else {
          widget.showProductFunct!(widget.productModel!);
        }
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
        child: Neumorphic(
          style: NeumorphicStyle(
              color: widget.productModel == null
                  ? null
                  : Theme.of(context).colorScheme.surface,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.vertical(
                  top: Radius.circular(50), bottom: Radius.circular(15)))),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.42,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20.0, right: 20, bottom: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: SizedBox.square(
                      dimension: 80,
                      child: widget.productModel == null
                          ? Icon(
                              Icons.add,
                              color: Colors.grey,
                              size: 40,
                            )
                          : CachedNetworkImage(
                              imageUrl: widget.productModel!.photoAlbum.first,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Center(
                  child: GradientMask(
                size: 35,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                  child: Text(
                    widget.productModel == null
                        ? "Добавить новый товар"
                        : widget.productModel!.name,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
              if (widget.productModel == null)
                SizedBox(
                  height: 150,
                ),
              if (widget.productModel != null)
                Wrap(
                  children: [
                    Transform.scale(
                      scale: 0.7,
                      child: CategoryChip(
                          color: widget.productModel!.category.color,
                          label: widget.productModel!.category.label,
                          isSelected: true),
                    )
                  ],
                ),
              if (widget.productModel == null)
                SizedBox(
                  height: 15,
                ),
              if (widget.productModel != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        widget.productModel!.description,
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.center,
                        textScaleFactor: 0.8,
                        style: Theme.of(context).textTheme.labelMedium,
                        maxLines: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Стоимость: ",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            GradientMask(
                              size: 25,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              child: Text(
                                widget.productModel!.price.toStringAsFixed(2),
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: Colors.white60),
                              ),
                            )
                          ],
                        ),
                      ),
                      if (widget.isReadctorMode)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 10),
                          child: NeumorphicButton(
                            onPressed: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => ProductEditorScreen(
                                          model: widget.productModel,
                                        ))),
                            child: GradientMask(
                              size: 25,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              child: Icon(
                                Icons.edit,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ),
                      if (!widget.isReadctorMode)
                        BlocListener<CartBloc, CartState>(
                          listener: (context, state) {
                            state.maybeWhen(
                                orElse: () => null,
                                itemManaged: (item) {
                                  if (widget.productModel!.productId ==
                                      item!.productId) {
                                    setState(() {
                                      count = item.amount;
                                    });
                                  }
                                });
                          },
                          child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 300),
                            child: count == 0
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 3.0),
                                    child: FittedBox(
                                      child: NeumorphicButton(
                                        onPressed: () {
                                          setState(() {
                                            count = 1;
                                            widget.productModel!.quantity -= 1;
                                          });
                                          _productController!.add({
                                            'productId':
                                                widget.productModel!.productId,
                                            'quantity': count
                                          });
                                        },
                                        child: GradientMask(
                                          size: 25,
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          child: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.white54,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: FloatingActionButton(
                                            mini: true,
                                            child: Icon(Icons.remove, size: 40),
                                            onPressed: count > 0
                                                ? () {
                                                    setState(() {
                                                      count--;
                                                      widget.productModel!
                                                          .quantity++;
                                                    });
                                                    _productController!.add({
                                                      'productId': widget
                                                          .productModel!
                                                          .productId,
                                                      'quantity': count
                                                    });
                                                  }
                                                : null),
                                      ),
                                      Transform.scale(
                                        scale: 0.7,
                                        child: FloatingActionButton(
                                            mini: true,
                                            backgroundColor: Colors.white,
                                            child: GradientMask(
                                                size: 15,
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                child: Text(count.toString())),
                                            onPressed: () => null),
                                      ),
                                      Transform.scale(
                                        scale: 0.7,
                                        child: FloatingActionButton(
                                            mini: true,
                                            child: Icon(Icons.add, size: 40),
                                            onPressed: widget.productModel!
                                                            .quantity +
                                                        count >
                                                    count
                                                ? () {
                                                    setState(() {
                                                      count++;
                                                      widget.productModel!
                                                          .quantity--;
                                                    });
                                                    _productController!.add({
                                                      'productId': widget
                                                          .productModel!
                                                          .productId,
                                                      'quantity': count
                                                    });
                                                  }
                                                : null),
                                      )
                                    ],
                                  ),
                          ),
                        )
                    ],
                  ),
                )
            ]),
          ),
        ),
      ),
    );
  }
}
