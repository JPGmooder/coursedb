import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/model/product_type_model.dart';
import 'package:kursach/domain/product/bloc/product_bloc.dart';
import 'package:kursach/presentation/outstanding/category_chip.dart';
import 'package:rxdart/rxdart.dart';

class PickProductType extends StatefulWidget {
  PickProductType({Key? key, required this.avoidList, required this.setModels})
      : super(key: key);
  List<ProductTypeModel> avoidList;
  void Function(List<ProductTypeModel> models) setModels;
  @override
  State<PickProductType> createState() => _PickProductTypeState();
}

class _PickProductTypeState extends State<PickProductType> {
  late TextEditingController _controller;
  late StreamController<String> _sender;
  List<ProductTypeModel> addedchips = [];
  List<ProductTypeModel> findedchips = [];

  @override
  void initState() {
    _sender = StreamController<String>();
    addedchips.addAll(widget.avoidList);
    _controller = TextEditingController();
    _controller.addListener(() {
      setState(() {
        _sender.add(_controller.text);
      });
    });
    _sender.stream
        .distinct()
        .debounceTime(Duration(milliseconds: 300))
        .listen((event) {
      context.read<ProductBloc>().add(ProductEvent.loadCategories(event));
    });
    super.initState();
  }

  @override
  void dispose() {
    _sender.close();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Поиск категорий",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  hintText: "Введите название категории",
                  hintStyle: Theme.of(context).textTheme.labelMedium,
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
          ),
          Text(
            "Найденные категории",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BlocListener<ProductBloc, ProductState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () => null,
                          categoriesLoaded: (categories) {
                            setState(() {
                              findedchips.addAll(categories.where((element) =>
                                  !addedchips.contains(element) &&
                                  !findedchips.contains(element)));
                            });
                          },
                        );
                      },
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          if (_controller.text.isNotEmpty)
                            CategoryChip(
                              color: AppsColors.primaryColor,
                              label: _controller.text,
                              isSelected: false,
                              onSelected: (value) {
                                setState(() {
                                  if (value &&
                                      addedchips
                                          .where((element) =>
                                              element.label == _controller.text)
                                          .isEmpty &&
                                      addedchips.length < 3) {
                                    addedchips.add(ProductTypeModel(
                                        label: _controller.text,
                                        isNew: true,
                                        color: Color.fromRGBO(
                                            Random().nextInt(255),
                                            Random().nextInt(255),
                                            Random().nextInt(255),
                                            0.5),
                                        isSelected: value));
                                  }
                                });
                              },
                            ),
                          ...addedchips.map((e) {
                            return CategoryChip(
                              color: e.color,
                              label: e.label,
                              isSelected: true,
                              onSelected: (value) {
                                setState(() {
                                  addedchips.remove(e);
                                });
                              },
                            );
                          }).toList(),
                          ...findedchips.map((e) {
                            return CategoryChip(
                              color: e.color,
                              label: e.label,
                              isSelected: false,
                              onSelected: (value) {
                                setState(() {
                                  if (value) {
                                    if (!addedchips.contains(e) &&
                                        addedchips.length < 3) {
                                      addedchips.add(e);
                                      findedchips.remove(e);
                                    }
                                  }
                                });
                              },
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Выбрано категорий: ${addedchips.length} из 3",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                )
              ],
            ),
          ),
          BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.maybeWhen(
                  categoriesAdded: (categories) {
                    context.read<ProductBloc>().emit(ProductState.initial());
                    Navigator.pop(context);
                    Future.delayed(Duration.zero)
                        .then((value) => widget.setModels(addedchips));
                    return Container();
                  },
                  loading: (_) {
                    return CircularProgressIndicator.adaptive();
                  },
                  orElse: () => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.close),
                            ),
                            IconButton(
                              onPressed: () {
                                print("aboba");
                                context.read<ProductBloc>().add(
                                    ProductEvent.addNewCategories(addedchips
                                        .where((element) => element.isNew)
                                        .toList()));
                              },
                              icon: Icon(Icons.save),
                            )
                          ],
                        ),
                      ));
            },
          )
        ],
      ),
    );
  }
}
