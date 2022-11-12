import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/data/api/model/graphclient.dart';

import 'package:kursach/domain/model/brand_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/product_type_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/product/bloc/product_bloc.dart';
import 'package:kursach/presentation/home/profile/organization/pick_brand_widget.dart';
import 'package:kursach/presentation/home/profile/organization/pick_product_type_widget.dart';
import 'package:kursach/presentation/outstanding/brand_widget.dart';
import 'package:kursach/presentation/outstanding/category_chip.dart';
import 'package:kursach/presentation/outstanding/product_image.dart';

class ProductEditorScreen extends StatefulWidget {
  ProductEditorScreen({Key? key, this.model}) : super(key: key);
  ProductModel? model;
  @override
  State<ProductEditorScreen> createState() => _ProductEditorScreenState();
}

class _ProductEditorScreenState extends State<ProductEditorScreen> {
  late TextEditingController _nameController,
      _priceController,
      _descController,
      _countyController;
  BrandModel? _currentBrand;
  late List<ProductTypeModel> productTypes;
  late List<Uint8List?> _images;
  late final List<Uint8List> originImages;
  @override
  void initState() {
    productTypes = [];
    _images = <Uint8List?>[];
    _nameController = TextEditingController();
    _priceController = TextEditingController();
    _descController = TextEditingController();
    _countyController = TextEditingController();

    if (widget.model != null) {
      productTypes.add(widget.model!.category);
      if (widget.model!.categoryS != null) {
        productTypes.add(widget.model!.categoryS!);
      }
      if (widget.model!.categoryT != null) {
        productTypes.add(widget.model!.categoryT!);
      }
      _nameController.text = widget.model!.name;
      _countyController.text = widget.model!.quantity.toString();
      _currentBrand = widget.model!.brand;
      _descController.text = widget.model!.description;
      _priceController.text = widget.model!.price.toString();
      ProductProvider.downLoadProductImages(
              images: widget.model!.photoAlbum,
              productName: widget.model!.name,
              orgId: UserModel.get().organizationModel!.idCompany)
          .then((value) {
        setState(() {
          _images = value;
        });
      });
    }

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _descController.dispose();
    _countyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.model != null
                          ? "Изменение существующего товара"
                          : "Добавление нового товара",
                      textScaleFactor: 1.3,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                            labelText: "Наименование",
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)))),
                      ),
                    ),
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(depth: -5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Text(
                            "Галлерея",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        if (widget.model != null && _images.isEmpty)
                          CircularProgressIndicator(),
                        if ((widget.model != null && _images.isNotEmpty) ||
                            (widget.model == null))
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.3,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (ctx, index) {
                                    if (index == 0 &&
                                        _images.length > 1 &&
                                        _images.first == "") {
                                      return ProductImage(
                                          isLeading: true,
                                          setImage: (image) => setState(() {
                                                _images.insert(0, image);
                                              }));
                                    }

                                    if (index == _images.length) {
                                      return ProductImage(
                                        setImage: (image) => setState(() {
                                          _images.add(image);
                                        }),
                                      );
                                    } else {
                                      return ProductImage(
                                        imageData: _images[index],
                                        onDelete: () => setState(() {
                                          if (index == 0) {
                                            _images[0] = null;
                                          } else {
                                            _images.removeAt(index);
                                          }
                                        }),
                                      );
                                    }
                                  },
                                  itemCount: _images.length + 1),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Бренд размещаемой продукции",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            _currentBrand != null
                                ? Stack(
                                    children: [
                                      BrandWidget(brand: _currentBrand!),
                                      Positioned(
                                        right: 0,
                                        top: -15,
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.close,
                                            color: Colors.red[300],
                                          ),
                                          onPressed: () => setState(() {
                                            _currentBrand = null;
                                          }),
                                        ),
                                      )
                                    ],
                                  )
                                : NeumorphicButton(
                                    onPressed: () => showDialog(
                                        context: context,
                                        builder: (ctx) => AlertDialog(
                                              content: PickBrandWidget(
                                                setBrand: (brand) =>
                                                    setState(() {
                                                  _currentBrand = brand;
                                                }),
                                              ),
                                            )),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 25.0),
                                      child: Column(children: [
                                        Text(
                                          "Добавить бренд",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                        Icon(Icons.add, color: Colors.grey),
                                      ]),
                                    ),
                                  )
                          ]),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Категории товара",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                ...productTypes
                                    .map((e) => CategoryChip(
                                          label: e.label,
                                          color: e.color,
                                          isSelected: true,
                                        ))
                                    .toList(),
                                RawChip(
                                    labelPadding:
                                        EdgeInsets.symmetric(horizontal: 3),
                                    visualDensity: VisualDensity(
                                        horizontal: 0.0, vertical: -4),
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    onPressed: () => showDialog(
                                        context: context,
                                        builder: (ctx) {
                                          return AlertDialog(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 5, horizontal: 5),
                                            content: PickProductType(
                                              avoidList: productTypes,
                                              setModels: (models) =>
                                                  setState(() {
                                                productTypes = models;
                                              }),
                                            ),
                                          );
                                        }),
                                    label: Text(
                                      "Добавить",
                                      textScaleFactor: 0.6,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: List.generate(
                      2,
                      (index) => Expanded(
                        child: Card(
                            child: TextField(
                          controller:
                              index == 0 ? _countyController : _priceController,
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: index == 0
                                  ? "Колличество товара"
                                  : "Цена за 1 шт.",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3)))),
                        )),
                      ),
                    ),
                  ),
                  Card(
                    child: TextField(
                      controller: _descController,
                      maxLines: 10,
                      minLines: 1,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          labelText: "Описание товара",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)))),
                    ),
                  ),
                  BlocConsumer<ProductBloc, ProductState>(
                    listener: (ctx, state) => state.maybeWhen(
                        orElse: () => null,
                        productAdded: ((product) {
                          var productId = UserModel.get()
                              .organizationModel!
                              .loadedProduct
                              .indexWhere((element) =>
                                  element.productId == product.productId);
                          if (productId != -1) {
                            UserModel.get()
                                .organizationModel!
                                .loadedProduct[productId] = product;
                          } else {
                            UserModel.get()
                                .organizationModel!
                                .loadedProduct
                                .add(product);
                          }
                          Future.delayed(Duration.zero).then((value) {
                            Navigator.pop(context);
                          });
                        })),
                    builder: (context, state) {
                      return state.maybeWhen(
                          loading: (_) {
                            return CircularProgressIndicator();
                          },
                          orElse: () => Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 25),
                                child: NeumorphicButton(
                                  style: NeumorphicStyle(depth: -5),
                                  onPressed: () => context
                                      .read<ProductBloc>()
                                      .add(ProductEvent.addNewProduct(
                                        idProduct: widget.model?.productId,
                                        brandName: _currentBrand?.name ?? "",
                                        album: _images.map((e) => e!).toList(),
                                        productDesc: _descController.text,
                                        productName: _nameController.text,
                                        productPrice:
                                            double.parse(_priceController.text),
                                        quantity:
                                            int.parse(_countyController.text),
                                        productCategory:
                                            productTypes.first.label,
                                        productCategoryS:
                                            productTypes.length > 1
                                                ? productTypes[1].label
                                                : null,
                                        productCategoryT:
                                            productTypes.length > 2
                                                ? productTypes[2].label
                                                : null,
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Center(
                                      child: Text(
                                        widget.model != null
                                            ? "Изменить"
                                            : "Добавить",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ),
                                  ),
                                ),
                              ));
                    },
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
