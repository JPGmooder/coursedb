import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/presentation/outstanding/brand_widget.dart';
import 'package:kursach/presentation/outstanding/category_chip.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key? key, this.defaultCount, required this.currentProduct}) : super(key: key);
  ProductModel currentProduct;
  int? defaultCount;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late ExpandableController _controller;

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CarouselSlider.builder(
                  itemCount: widget.currentProduct.photoAlbum.length,
                  itemBuilder: (ctx, index, realIndex) => CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: widget.currentProduct.photoAlbum[index]),
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
                                color: widget.currentProduct.categoryS!.color,
                                label: widget.currentProduct.categoryS!.label,
                                isSelected: true),
                          if (widget.currentProduct.categoryT != null)
                            CategoryChip(
                                color: widget.currentProduct.categoryT!.color,
                                label: widget.currentProduct.categoryT!.label,
                                isSelected: true),
                        ],
                      ),
                    ),
                    Text(
                      widget.currentProduct.quantity > 20
                          ? "В наличии"
                          : widget.currentProduct.quantity == 50
                              ? "Нет в наличии"
                              : "Осталось ${widget.currentProduct.quantity} шт.",
                      textScaleFactor: 1.2,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
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
                              style: Theme.of(context).textTheme.titleMedium,
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
                      defaultCount: widget.defaultCount,
                      product: widget.currentProduct,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomProductPage extends StatefulWidget {
  const BottomProductPage({Key? key, required this.product, this.defaultCount}) : super(key: key);
  final ProductModel product;
  final int? defaultCount;
  @override
  State<BottomProductPage> createState() => _BottomProductPageState();
}

class _BottomProductPageState extends State<BottomProductPage> {
  late int count;

  @override
  void initState() {
    count = widget.defaultCount ?? 1;
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
        GradientMask(
          size: 120,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          child: NeumorphicButton(
            onPressed: () => null,
            style: NeumorphicStyle(color: Colors.white70),
            child: Text(
              'Добавить ${(count * widget.product.price).toInt()} руб.',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        )
      ],
    );
  }
}
