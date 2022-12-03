import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kursach/domain/place_searcher/bloc/place_searcher_bloc.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class MyAddresses extends StatefulWidget {
  MyAddresses({Key? key}) : super(key: key);

  @override
  State<MyAddresses> createState() => _MyAddressesState();
}

class _MyAddressesState extends State<MyAddresses> {
  late List<AddressModel> currentAddresses;

  @override
  void initState() {
    currentAddresses = UserModel.get().addresses!;
    context
        .read<AuthBloc>()
        .add(AuthEvent.findAddressUser(UserModel.get().login));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text(
            "Мои адреса",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surface,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
                onPressed: () => showModalBottomSheet(
                    isDismissible: true,
                    context: context,
                    builder: (ctx) => Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.65,
                            child: SingleChildScrollView(
                              child: AddressBody(
                                changeAddress: (changed) => context
                                    .read<AuthBloc>()
                                    .add(AuthEvent.findAddressUser(
                                        UserModel.get().login)),
                                currentAddress: null,
                              ),
                            ),
                          ),
                        )),
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ))
          ],
        ),
        SliverFillRemaining(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.maybeWhen(
                  addressesFinded: (addresses) {
                    currentAddresses = addresses;
                    UserModel.get().addresses = addresses;
                    return AddressesBody(
                      addresses: currentAddresses,
                    );
                  },
                  loading: () => CircularProgressIndicator(),
                  orElse: () => AddressesBody(
                        addresses: currentAddresses,
                      ));
            },
          ),
        )
      ]),
    );
  }
}

class AddressesBody extends StatefulWidget {
  AddressesBody({
    Key? key,
    required this.addresses,
  }) : super(key: key);
  List<AddressModel> addresses;

  @override
  State<AddressesBody> createState() => _AddressesBodyState();
}

class _AddressesBodyState extends State<AddressesBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: widget.addresses.length,
          itemBuilder: (ctx, index) {
            var currentAddress = widget.addresses[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpandablePanel(
                    header: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        currentAddress.name ??
                            "${currentAddress.city}, ${currentAddress.street}",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    collapsed: Container(),
                    expanded: AddressBody(
                      changeAddress: (currentAddress) => setState(() {
                        widget.addresses = [...widget.addresses];

                        widget.addresses[index] = currentAddress;
                      }),
                      currentAddress: currentAddress,
                    )),
              ),
            );
          }),
    );
  }
}

class AddressBody extends StatefulWidget {
  const AddressBody(
      {Key? key, required this.currentAddress, required this.changeAddress})
      : super(key: key);
  final AddressModel? currentAddress;
  final void Function(AddressModel changedAddress) changeAddress;
  @override
  State<AddressBody> createState() => _AddressBodyState();
}

class _AddressBodyState extends State<AddressBody> {
  late TextEditingController _cityController,
      _streetController,
      _buildingController,
      _enteranceController,
      _floorController,
      _appartamentController,
      _nameController;
  late bool isLoading;
  @override
  void initState() {
    isLoading = false;
    _cityController = TextEditingController(text: widget.currentAddress?.city);
    _streetController =
        TextEditingController(text: widget.currentAddress?.street);
    _buildingController =
        TextEditingController(text: widget.currentAddress?.housenumber);
    _enteranceController =
        TextEditingController(text: widget.currentAddress?.enterance);
    _floorController =
        TextEditingController(text: widget.currentAddress?.floor);
    _appartamentController =
        TextEditingController(text: widget.currentAddress?.apartament);
    _nameController = TextEditingController(text: widget.currentAddress?.name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...List.generate(5, (index) {
          late String labelText;
          late IconData suffixIcon;
          late TextEditingController controller;
          switch (index) {
            case 0:
              labelText = "Город доставки";
              suffixIcon = Icons.location_city;
              controller = _cityController;
              break;
            case 1:
              labelText = "Улица";
              suffixIcon = Icons.location_city;
              controller = _streetController;
              break;
            case 4:
              labelText = "Название адреса";
              suffixIcon = FontAwesomeIcons.passport;
              controller = _nameController;
              break;
            default:
          }

          return index == 2
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(2, (childindex) {
                          labelText =
                              childindex == 0 ? "Номер строения" : "Парадная";
                          suffixIcon =
                              childindex == 0 ? Icons.house : Icons.exit_to_app;
                          controller = childindex == 0
                              ? _buildingController
                              : _enteranceController;
                          return SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: TextFormField(
                              controller: controller,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: labelText,
                                  border: OutlineInputBorder(),
                                  isDense: false,
                                  suffixIcon: Icon(suffixIcon),
                                  labelStyle:
                                      Theme.of(context).textTheme.labelMedium),
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                )
              : index == 3
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(2, (childindex) {
                              labelText = childindex == 0 ? "Этаж" : "Квартира";
                              suffixIcon = childindex == 0
                                  ? Icons.escalator
                                  : Icons.door_sliding_rounded;
                              controller = childindex == 0
                                  ? _floorController
                                  : _appartamentController;
                              return SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: TextFormField(
                                  controller: controller,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      labelText: labelText,
                                      border: OutlineInputBorder(),
                                      isDense: false,
                                      suffixIcon: Icon(suffixIcon),
                                      labelStyle: Theme.of(context)
                                          .textTheme
                                          .labelMedium),
                                ),
                              );
                            })
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: controller,
                        inputFormatters: index == 3
                            ? [FilteringTextInputFormatter.digitsOnly]
                            : null,
                        keyboardType: index == 3
                            ? TextInputType.number
                            : TextInputType.streetAddress,
                        decoration: InputDecoration(
                            labelText: labelText,
                            border: OutlineInputBorder(),
                            isDense: false,
                            suffixIcon: Icon(suffixIcon),
                            labelStyle:
                                Theme.of(context).textTheme.labelMedium),
                      ),
                    );
        }),
        isLoading
            ? CircularProgressIndicator()
            : Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: MediaQuery.of(context).size.width * 0.2),
                child: GradientMask(
                  size: 100,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  child: NeumorphicButton(
                    style: NeumorphicStyle(color: Colors.white54),
                    child: Center(
                      child: Text(
                        "Сохранить",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    onPressed: () {
                      if (_streetController.text.trim().isNotEmpty &&
                          _cityController.text.trim().isNotEmpty &&
                          _buildingController.text.trim().isNotEmpty) {
                        setState(() {
                          isLoading = true;
                        });
                        PlaceSearcherRepository.getPlaces(
                                "${_cityController.text.trim()} ${_streetController.text.trim()} ${_buildingController.text.trim()}")
                            .then((value) {
                          if (value.isEmpty) {
                            showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                      title: Text(
                                          "Ошибка в процессе изменения адреса"),
                                      content: Text(
                                          "Выбранный адрес не найден, проверьте введенную информацию и повторите попытку"),
                                    ));
                          } else {
                            if (widget.currentAddress == null) {
                              AuthRepository.addAddressData(
                                      model: value.first.copyWith(
                                          id_address:
                                              widget.currentAddress?.id_address,
                                          name: _nameController.text.trim(),
                                          floor: _floorController.text.trim(),
                                          enterance:
                                              _enteranceController.text.trim(),
                                          apartament: _appartamentController
                                              .text
                                              .trim()),
                                      userID: UserModel.get().login)
                                  .then((value) {
                                UserModel.get().addresses = [
                                  ...UserModel.get().addresses!,
                                  value
                                ];
                                widget.changeAddress(value);
                              });
                            } else {
                              AuthRepository.updateAddressById(
                                      changedAddress: value.first.copyWith(
                                          id_address:
                                              widget.currentAddress?.id_address,
                                          name: _nameController.text.trim(),
                                          floor: _floorController.text.trim(),
                                          enterance:
                                              _enteranceController.text.trim(),
                                          apartament: _appartamentController
                                              .text
                                              .trim()))
                                  .then((value) {
                                var index = UserModel.get()
                                    .addresses!
                                    .indexWhere((element) =>
                                        element.id_address ==
                                        widget.currentAddress?.id_address);
                                UserModel.get().addresses = [
                                  ...UserModel.get().addresses!
                                ];

                                UserModel.get().addresses![index] = value;
                                setState(() {
                                  isLoading = false;
                                });
                                widget.changeAddress(value);
                              });
                            }
                          }
                        });
                      }
                    },
                  ),
                ),
              )
      ],
    );
  }
}
