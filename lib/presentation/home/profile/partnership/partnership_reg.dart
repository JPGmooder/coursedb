import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/organization/bloc/org_bloc.dart';
import 'package:kursach/presentation/home/navigator_screen.dart';
import 'package:kursach/presentation/home/restaurant/restaraunt_screen.dart';
import 'package:kursach/presentation/outstanding/card_picker.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:rive/rive.dart';

class PartnerShipReg extends StatefulWidget {
  const PartnerShipReg({Key? key, this.pickedAddress}) : super(key: key);
  static const String route = "profile/partnershipreg";
  final AddressModel? pickedAddress;

  @override
  State<PartnerShipReg> createState() => _PartnerShipRegState();
}

class _PartnerShipRegState extends State<PartnerShipReg> {
  String currentOrgType = "Продукты";
  late TextEditingController _cityController;
  late TextEditingController _streetController;
  late TextEditingController _buildingController;
  late TextEditingController _nameController;
  late TextEditingController _priceController;
  Uint8List? cardImage;
  Uint8List? logoImage;
  StateMachineController? _scontroller;

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
    _cityController.dispose();
    _streetController.dispose();
    _buildingController.dispose();
    _nameController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _cityController = TextEditingController(text: widget.pickedAddress?.city);
    _streetController =
        TextEditingController(text: widget.pickedAddress?.street);
    _buildingController =
        TextEditingController(text: widget.pickedAddress?.housenumber);
    _nameController = TextEditingController(
        text: widget.pickedAddress == null
            ? null
            : "Магазин на ${widget.pickedAddress?.street} ${widget.pickedAddress?.housenumber}");
    _priceController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
              iconTheme: IconThemeData(color: Colors.black),
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              backgroundColor: Theme.of(context).colorScheme.surface,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                expandedTitleScale: 1,
                centerTitle: true,
                title: Text(
                  "Информация об организации",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                background: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: RiveAnimation.asset(
                    "lib/assets/anim/castle.riv",
                    fit: BoxFit.fill,
                    onInit: _onInit,
                    controllers: _scontroller == null ? [] : [_scontroller!],
                  ),
                ),
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ...List.generate(4, (index) {
                      late String labelText;
                      late IconData suffixIcon;
                      late TextEditingController controller;
                      switch (index) {
                        case 0:
                          labelText = "Город доставки";
                          suffixIcon = Icons.location_city;
                          controller = _cityController;
                          break;
                        case 2:
                          labelText = "Название предприятия";
                          suffixIcon = Icons.woo_commerce;
                          controller = _nameController;
                          break;
                        case 3:
                          labelText = "Цена доставки";
                          suffixIcon = Icons.price_change;
                          controller = _priceController;
                          break;
                        default:
                      }

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: index == 1
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(2, (rowIndex) {
                                  TextEditingController rowController =
                                      rowIndex == 0
                                          ? _streetController
                                          : _buildingController;
                                  String rowLabel =
                                      rowIndex == 0 ? "Улица" : "Номер здания";
                                  IconData rowIcon = rowIndex == 0
                                      ? FontAwesomeIcons.streetView
                                      : Icons.house_sharp;
                                  return SizedBox(
                                    width: rowIndex == 0
                                        ? MediaQuery.of(context).size.width *
                                            0.6
                                        : MediaQuery.of(context).size.width *
                                            0.26,
                                    child: TextFormField(
                                      keyboardType: TextInputType.streetAddress,
                                      controller: rowController,
                                      decoration: InputDecoration(
                                          labelText: rowLabel,
                                          border: const OutlineInputBorder(),
                                          isDense: false,
                                          labelStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium),
                                    ),
                                  );
                                }),
                              )
                            : TextFormField(
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
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                              ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButtonFormField<String>(
                          value: currentOrgType,
                          decoration: InputDecoration(
                              label: Text(
                                'Вид деятельности вашего предприятия',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              border: OutlineInputBorder()),
                          items: [
                            const DropdownMenuItem(
                              value: "Продукты",
                              child: Text("Продуктовый магазин"),
                            ),
                            const DropdownMenuItem(
                              value: "Рестораны",
                              child: Text("Ресторан"),
                            ),
                            const DropdownMenuItem(
                              value: "Рынки",
                              child: Text("Рыночная площадка"),
                            ),
                            const DropdownMenuItem(
                              value: "Аптеки",
                              child: Text("Аптека"),
                            ),
                            const DropdownMenuItem(
                              value: "Книжные",
                              child: Text("Книжный магазин"),
                            ),
                            const DropdownMenuItem(
                              value: "Другое",
                              child: Text("Другое"),
                            )
                          ],
                          onChanged: (value) => setState(() {
                                currentOrgType = value ?? currentOrgType;
                              })),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CardPicker(
                        baseCard: cardImage,
                        baseLogo: logoImage,
                        setCard: (currentCard) => setState(() {
                          cardImage = currentCard;
                        }),
                        setLogo: (currentLogo) => setState(() {
                          logoImage = currentLogo;
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: BlocConsumer<OrganizationBloc, OrganizationState>(
                        listener: (context, state) => state.maybeWhen(
                          orElse: () => null,
                          loaded: (loadedOrg) {
                            UserModel.get().organizationModel = loadedOrg;
                            Navigator.of(context).popUntil((route) =>
                                route.settings.name != NavigatorScreen.route);
                          },
                          errored: (errorTitle, errorSubtitle) => showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          errorTitle,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          errorSubtitle,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    ),
                                  )),
                        ),
                        builder: (context, state) {
                          return state.maybeWhen(
                              orElse: () => NeumorphicButton(
                                    onPressed: _buildingController
                                                .text.isNotEmpty &&
                                            _cityController.text.isNotEmpty &&
                                            _nameController.text.isNotEmpty &&
                                            _priceController.text.isNotEmpty &&
                                            _streetController.text.isNotEmpty &&
                                            cardImage != null &&
                                            logoImage != null
                                        ? () => context
                                            .read<OrganizationBloc>()
                                            .add(OrganizationEvent.createNew(
                                                type: currentOrgType,
                                                addressModel: widget.pickedAddress!.copyWith(
                                                    city: _cityController.text,
                                                    name: _nameController.text,
                                                    street:
                                                        _streetController.text,
                                                    housenumber:
                                                        _buildingController
                                                            .text),
                                                name: _nameController.text,
                                                deliveryPrice: double.parse(
                                                    _priceController.text),
                                                logoImage: logoImage!,
                                                cardImage: cardImage!))
                                        : null,
                                    style: const NeumorphicStyle(depth: -5),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: GradientMask(
                                        size: 45,
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        child: Text(
                                          "Продолжить",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                    ),
                                  ),
                              loaded: (model) {
                                UserModel.get().organizationModel = model;
                                Navigator.pop(context,  true);
                                return Container();
                              },
                              loading: () =>
                                  LoadingWidget());
                        },
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
