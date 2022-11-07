import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:kursach/domain/model/brand_model.dart';
import 'package:kursach/domain/model/product_type_model.dart';
import 'package:kursach/presentation/home/profile/organization/pick_brand_widget.dart';
import 'package:kursach/presentation/home/profile/organization/pick_product_type_widget.dart';
import 'package:kursach/presentation/outstanding/brand_widget.dart';
import 'package:kursach/presentation/outstanding/category_chip.dart';
import 'package:kursach/presentation/outstanding/product_image.dart';

class ProductEditorScreen extends StatefulWidget {
  ProductEditorScreen({Key? key}) : super(key: key);

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
  @override
  void initState() {
    productTypes = [];
    _images = [];
    _nameController = TextEditingController();
    _priceController = TextEditingController();
    _descController = TextEditingController();
    _countyController = TextEditingController();

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
                      "Добавление нового товара",
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (ctx, index) {
                                  if (index == 0 &&
                                      _images.length > 1 &&
                                      _images.first == null) {
                                    return ProductImage(
                                        isLeading: true,
                                        setImage: (image) => setState(() {
                                              _images.insert(0, image);
                                            }));
                                  }

                                  if (index == _images.length) {
                                    if (_images.isEmpty) {
                                      return Row(
                                        children: [
                                          ProductImage(
                                              isLeading: true,
                                              setImage: (image) => setState(() {
                                                    _images.insert(0, image);
                                                  })),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          ProductImage(
                                            setImage: (image) => setState(() {
                                              _images.add(image);
                                            }),
                                          ),
                                        ],
                                      );
                                    } else {
                                      return ProductImage(
                                        setImage: (image) => setState(() {
                                          _images.add(image);
                                        }),
                                      );
                                    }
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 25),
                    child: NeumorphicButton(
                      style: NeumorphicStyle(depth: -5),
                      onPressed: () => null,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            "Добавить",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
