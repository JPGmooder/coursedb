import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/organization/bloc/org_bloc.dart';
import 'package:kursach/presentation/outstanding/card_picker.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class PartnerShipReg extends StatefulWidget {
  const PartnerShipReg({Key? key, this.pickedAddress}) : super(key: key);
  static const String route = "profile/partnershipreg";
  final AddressModel? pickedAddress;

  @override
  State<PartnerShipReg> createState() => _PartnerShipRegState();
}

class _PartnerShipRegState extends State<PartnerShipReg> {
  late TextEditingController _cityController;
  late TextEditingController _streetController;
  late TextEditingController _buildingController;
  late TextEditingController _nameController;
  late TextEditingController _priceController;
  Uint8List? cardImage;
  Uint8List? logoImage;
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
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  title: Text(
                    "Информация об организации",
                    style: Theme.of(context).textTheme.titleMedium,
                  ))),
          SliverFillRemaining(
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
                      child: CardPicker(
                        setCard: (currentCard) => cardImage = currentCard,
                        setLogo: (currentLogo) => logoImage = currentLogo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: BlocBuilder<OrganizationBloc, OrganizationState>(
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
                                                addressModel:
                                                    widget.pickedAddress!,
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
                              loading: () =>
                                  CircularProgressIndicator.adaptive());
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
