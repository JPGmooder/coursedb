import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class ProductCard extends StatefulWidget {
  ProductCard({Key? key, this.productModel, this.isReadctorMode = false})
      : super(key: key);
  ProductModel? productModel;
  bool isReadctorMode;
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("aboba"),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.48,
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
                          : Image.asset('lib/assets/prost.jpeg'),
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
                Transform.scale(
                  scale: 0.7,
                  alignment: Alignment.center,
                  child: Chip(
                      padding: EdgeInsets.zero,
                      label: Text(
                        "Молоко",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      )),
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
                      if (!widget.isReadctorMode)
                        AnimatedSwitcher(
                          duration: Duration(milliseconds: 300),
                          child: count == 0
                              ? Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 3.0),
                                  child: FittedBox(
                                    child: NeumorphicButton(
                                      onPressed: () => setState(() {
                                        count = 1;
                                      }),
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
                                          onPressed: () => setState(() {
                                                count--;
                                              })),
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
                                          onPressed: () => setState(() {
                                                count++;
                                              })),
                                    )
                                  ],
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
