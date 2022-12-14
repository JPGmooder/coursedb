import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/model/brand_model.dart';
import 'package:kursach/domain/pickers/image_picker.dart';
import 'package:kursach/domain/product/bloc/product_bloc.dart';
import 'package:kursach/presentation/outstanding/brand_widget.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:rxdart/rxdart.dart';

class PickBrandWidget extends StatefulWidget {
  const PickBrandWidget({Key? key, required this.setBrand}) : super(key: key);
  final void Function(BrandModel brand) setBrand;
  @override
  State<PickBrandWidget> createState() => _PickBrandWidgetState();
}

class _PickBrandWidgetState extends State<PickBrandWidget> {
  late TextEditingController _controller;
  late StreamController<String> _sender;
  List<BrandModel> findedBrands = [];

  @override
  void dispose() {
    _controller.dispose();
    _sender.close();
    super.dispose();
  }

  @override
  void initState() {
    _controller = TextEditingController();
    _sender = StreamController<String>();
    _controller.addListener(() {
      _sender.add(_controller.text);
    });
    _sender.stream
        .distinct()
        .debounceTime(Duration(milliseconds: 350))
        .listen((event) {
      context.read<ProductBloc>().add(ProductEvent.loadBrands(event));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Добавление бренда",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  hintText: "Введите название бренда",
                  hintStyle: Theme.of(context).textTheme.labelMedium,
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
          ),
          Card(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: BlocListener<ProductBloc, ProductState>(
                listener: (context, state) {
                  state.maybeWhen(
                      orElse: () => null,
                      brandsLoaded: (brands) => setState(() {
                            findedBrands = brands;
                          }));
                },
                child: findedBrands.isEmpty
                    ? Center(child: Text("Ничего не найдено"))
                    : ListView.builder(
                        itemCount: findedBrands.length,
                        itemBuilder: (ctx, index) {
                          return InkWell(
                              onTap: () {
                                Future.delayed(Duration.zero).then((value) =>
                                    widget.setBrand(findedBrands[index]));
                                Navigator.pop(context);
                              },
                              child: BrandWidget(brand: findedBrands[index]));
                        }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Не нашли нужный бренд?",
                    style: Theme.of(context).textTheme.labelMedium!,
                  ),
                  GradientMask(
                      size: 25,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          showDialog(
                              context: context,
                              builder: (ctx) => Dialog(
                                    insetPadding: EdgeInsets.symmetric(
                                        vertical: 40, horizontal: 5),
                                    child: AddNewBrandWidget(
                                        setBrand: widget.setBrand),
                                  ));
                        },
                        child: Text(
                          "Добавить новый!",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.white),
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AddNewBrandWidget extends StatefulWidget {
  const AddNewBrandWidget({Key? key, required this.setBrand}) : super(key: key);

  final void Function(BrandModel brand) setBrand;

  @override
  State<AddNewBrandWidget> createState() => _AddNewBrandWidgetState();
}

class _AddNewBrandWidgetState extends State<AddNewBrandWidget> {
  late TextEditingController _titleController;
  late TextEditingController _descController;

  Uint8List? image;
  @override
  void initState() {
    _titleController = TextEditingController();
    _descController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Добавление бренда",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                image == null
                    ? Expanded(
                        flex: 4,
                        child: NeumorphicButton(
                          onPressed: () =>
                              ImagePickers.pickImage().then((value) {
                            if (value != null) {
                              setState(() {
                                image = value;
                              });
                            }
                          }),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Добавить изображение",
                                  textAlign: TextAlign.center,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                )
                              ]),
                        ),
                      )
                    : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.33,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Stack(
                          children: [
                            Image.memory(image!),
                            Positioned(
                              right: -8,
                              top: -8,
                              child: Transform.scale(
                                scale: 0.7,
                                child: FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white,
                                  onPressed: () => setState(() {
                                    image = null;
                                  }),
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.red[300],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: _titleController,
                        decoration: InputDecoration(
                            hintText: "Название бренда",
                            hintStyle: Theme.of(context).textTheme.labelMedium,
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _descController,
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                        style: Theme.of(context).textTheme.labelMedium,
                        decoration: InputDecoration(
                            hintText: "Описание  бренда",
                            hintStyle: Theme.of(context).textTheme.labelMedium,
                            border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NeumorphicButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Назад",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              BlocConsumer<ProductBloc, ProductState>(
                listener: (context, state) => state.maybeWhen(
                    orElse: () => null,
                    brandAdded: (addedBrand) {
                      Future.delayed(Duration.zero).then((value) {
                        widget.setBrand(addedBrand);
                      });
                      Navigator.pop(context);
                    },
                    errored: (message, hint) => showDialog(
                        context: context,
                        builder: (ctx) => hint == null
                            ? AlertDialog(
                                content: Text(message),
                                title:
                                    Text("Ошибка в процессе добавления бренда"),
                              )
                            : AlertDialog(
                                content: Text(hint),
                                title: Text(message),
                              ))),
                builder: (context, state) {
                  return state.maybeWhen(
                      loading: (_) => CircularProgressIndicator.adaptive(),
                      orElse: () => NeumorphicButton(
                            onPressed: () {
                              if (image == null) {
                                showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                          content: Text(
                                              "Логотип бренда обязательно должен присутствовать, повторите попытку."),
                                        ));
                              } else {
                                context.read<ProductBloc>().add(
                                    ProductEvent.addNewBrand(
                                        _titleController.text,
                                        _descController.text,
                                        image!));
                              }
                            },
                            child: Text(
                              "Принять",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ));
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
