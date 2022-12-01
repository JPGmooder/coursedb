import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_type_model.dart';
import 'package:kursach/domain/product/bloc/product_bloc.dart';
import 'package:kursach/presentation/outstanding/category_chip.dart';
import 'package:kursach/presentation/outstanding/product/product_screen.dart';
import 'package:kursach/presentation/outstanding/product_card.dart';
import 'package:rive/rive.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/src/painting/gradient.dart' as gradient;
import 'package:supabase_flutter/supabase_flutter.dart';

class RestarauntMainPage extends StatefulWidget {
  RestarauntMainPage({Key? key, required this.currentOrg}) : super(key: key);

  OrganizationModel currentOrg;

  @override
  State<RestarauntMainPage> createState() => _RestarauntMainPageState();
}

class _RestarauntMainPageState extends State<RestarauntMainPage> {
  StateMachineController? _scontroller;
  late List<ProductTypeModel> categories;
  late ScrollController _maincroller;
  void _onInit(Artboard art) {
    var ctrl = StateMachineController.fromArtboard(art, 'State Machine 1')
        as StateMachineController;
    ctrl.isActive = false;
    art.addController(ctrl);
    setState(() {
      _scontroller = ctrl;
      _scontroller!.isActive = true;
    });
  }

  @override
  void dispose() {
    _maincroller.dispose();
    _scontroller?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    categories = [];
    context.read<ProductBloc>().add(ProductEvent.loadProducts(
        widget.currentOrg.idCompany, null, null, null));
    _maincroller = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
            controller: _maincroller,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    expandedHeight: MediaQuery.of(context).size.height * 0.335,
                    flexibleSpace: FlexibleSpaceBar(
                        background: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      widget.currentOrg.companyName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      widget.currentOrg.companyTypeName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                      textScaleFactor: 1.3,
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox.square(
                                          dimension: 75,
                                          child: RiveAnimation.asset(
                                            "lib/assets/anim/delivery.riv",
                                            onInit: _onInit,
                                            controllers: _scontroller == null
                                                ? []
                                                : [_scontroller!],
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Доставка",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Text(
                                                "С ценой ${widget.currentOrg.companyDeliveryPrice} р.")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox.square(
                                            dimension: 75,
                                            child: Icon(Icons.home_work)),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Самовывоз",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Text("Беслпатно")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                  )
                ],
            body: Card(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(15))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CatalogTitle(
                        onSelected: (value, index) => setState(() {
                              categories[index].isSelected = value;
                            }),
                        controller: _maincroller,
                        orgName: widget.currentOrg.companyName,
                        productTypes: categories),
                    Expanded(
                      child: SingleChildScrollView(
                        child: BlocConsumer<ProductBloc, ProductState>(
                          listenWhen: ((previous, current) =>
                              previous != current),
                          listener: (context, state) {
                            state.maybeWhen(
                                orElse: () => null,
                                loaded: (products) {
                                  widget.currentOrg.loadedProduct = products;
                                  List<ProductTypeModel> curCategories = [];

                                  for (var product in products) {
                                    if (!curCategories
                                        .contains(product.category)) {
                                      curCategories.add(product.category);
                                    }
                                    if (product.categoryS != null &&
                                        !curCategories
                                            .contains(product.categoryS)) {
                                      curCategories.add(product.categoryS!);
                                    }
                                    if (product.categoryT != null &&
                                        !curCategories
                                            .contains(product.categoryT)) {
                                      curCategories.add(product.categoryT!);
                                    }
                                  }

                                  Future.delayed(Duration.zero).then((value) {
                                    setState(() {
                                      categories = curCategories;
                                    });
                                  });
                                });
                          },
                          builder: (context, state) {
                            return state.maybeWhen(
                                orElse: () => Text(
                                    "Товары не найдены, проверьте связь с интернетом."),
                                loading: (_) =>
                                    CircularProgressIndicator.adaptive(),
                                loaded: (products) {
                                  var pickedCategories = categories
                                      .where((element) => element.isSelected);
                                  if (pickedCategories.isNotEmpty) {
                                    products = products
                                        .where((element) => pickedCategories
                                            .where((category) =>
                                                category.label ==
                                                    element.category.label ||
                                                category.label ==
                                                    element.categoryS?.label ||
                                                category.label ==
                                                    element.categoryT?.label)
                                            .isNotEmpty)
                                        .toList();
                                  }
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Text(
                                            "Каталог",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
                                          ),
                                        ),
                                        Center(
                                          child: Wrap(
                                              runSpacing: 10,
                                              spacing: 10,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              children: products
                                                  .map((product) => ProductCard(
                                                        currentOrg:
                                                            widget.currentOrg,
                                                        showProductFunct: (_) {
                                                          showBottomSheet(
                                                              context: context,
                                                              builder: (ctx) {
                                                                return ProductScreen(
                                                                    currentOrg:
                                                                        widget
                                                                            .currentOrg,
                                                                    currentProduct:
                                                                        product);
                                                              });
                                                        },
                                                        productModel: product,
                                                      ))
                                                  .toList()),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                        ),
                      ),
                    ),
                  ]),
            )),
      ),
    );
  }
}

class CatalogTitle extends StatefulWidget {
  CatalogTitle(
      {Key? key,
      required this.controller,
      required this.orgName,
      required this.onSelected,
      required this.productTypes})
      : super(key: key);
  ScrollController controller;
  String orgName;
  void Function(bool, int) onSelected;
  List<ProductTypeModel> productTypes;
  @override
  State<CatalogTitle> createState() => _CatalogTitleState();
}

class _CatalogTitleState extends State<CatalogTitle> {
  @override
  void initState() {
    widget.controller.addListener(() {
      if (widget.controller.position.maxScrollExtent !=
              widget.controller.position.pixels &&
          widget.controller.position.minScrollExtent !=
              widget.controller.position.pixels) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Opacity(
            opacity: !widget.controller.hasClients
                ? 0
                : widget.controller.position.pixels /
                    widget.controller.position.maxScrollExtent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () =>
                            SchedulerBinding.instance.addPostFrameCallback((_) {
                              Navigator.pop(context);
                            }),
                        icon: Icon(Icons.arrow_back)),
                    Text(
                      widget.orgName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    IconButton(onPressed: () => null, icon: Icon(Icons.search))
                  ],
                ),
                Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(onPressed: () => null, icon: Icon(Icons.menu)),
                      Expanded(
                          child: SizedBox(
                        height: 50,
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return const gradient.LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.purple,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.purple
                              ],
                              stops: [
                                0,
                                0.05,
                                0.9,
                                2.0
                              ], // 10% purple, 80% transparent, 10% purple
                            ).createShader(rect);
                          },
                          blendMode: BlendMode.dstOut,
                          child: ListView.builder(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              itemCount: widget.productTypes.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    child: CategoryChip(
                                        onSelected: (value) =>
                                            widget.onSelected(value, index),
                                        color: widget.productTypes[index].color,
                                        label: widget.productTypes[index].label,
                                        isSelected: widget
                                            .productTypes[index].isSelected),
                                  )),
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            )));
  }
}
