import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/additional/setlocation_screen.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class PersonalInfoBody extends StatefulWidget {
  const PersonalInfoBody({Key? key, this.model}) : super(key: key);
  final UserPersonalDataModel? model;
  @override
  State<PersonalInfoBody> createState() => _PersonalInfoBodyState();
}

class _PersonalInfoBodyState extends State<PersonalInfoBody> {
  late TextEditingController nameController,
      lnameController,
      patronymicController,
      phoneController;
  DateTime? pickedDate;
  UserPersonalDataModel? _currentModel;
  bool isLoading = false;

  @override
  void initState() {
    _currentModel = widget.model;
    pickedDate = _currentModel?.dateOfBirth;
    nameController = TextEditingController(text: _currentModel?.name);
    lnameController = TextEditingController(text: _currentModel?.fname);
    patronymicController =
        TextEditingController(text: _currentModel?.patronymic);
    phoneController = TextEditingController(text: _currentModel?.mobileNumber);

    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    lnameController.dispose();
    patronymicController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(pickedDate);

    return Column(children: [
      GradientMask(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        size: 100,
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 100),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "???????????????????????? ????????????",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                _currentModel == null
                    ? "?????????????? ???????? ???????????????????????? ????????????, ?????????? ???? ?????????? ?????? ?? ?????? ????????????????????."
                    : "?????????? ???? ???????????? ???????????????? ???????? ???????????????????????? ???????????? ???? ????????????????????.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      ...List.generate(5, (index) {
        late String text;
        late IconData icon;
        TextEditingController? _controller;
        switch (index) {
          case 0:
            text = "??????";
            icon = Icons.person;
            _controller = nameController;
            break;
          case 1:
            text = "??????????????";
            icon = Icons.family_restroom;
            _controller = lnameController;
            break;
          case 2:
            text = "????????????????";
            icon = Icons.male;
            _controller = patronymicController;
            break;
          case 3:
            text = "?????????? ????????????????";
            icon = FontAwesomeIcons.phone;
            _controller = phoneController;
            break;
          case 4:
            text = "???????? ????????????????";
            icon = FontAwesomeIcons.birthdayCake;
            if (pickedDate != null)
              _controller = TextEditingController(
                  text: DateFormat(" d MMMM y", 'ru').format(pickedDate!));
            break;
          default:
        }

        return Padding(
          padding: EdgeInsets.only(left: 5, right: 10),
          child: TextFormField(
            controller: _controller,
            onTap: index != 4
                ? null
                : () => BottomPicker.date(
                      title: "???????????????? ???????? ???????????? ????????????????",
                      titleStyle: Theme.of(context).textTheme.titleMedium!,
                      description:
                          "???????? ???????????? 16 ?????? ???? ?????????? ???????? ???????????????????????????????? ?? ????????????????????",
                      descriptionStyle:
                          Theme.of(context).textTheme.labelMedium!,
                      initialDateTime: pickedDate,
                      maxDateTime: DateTime.now(),
                      dismissable: true,
                      buttonText: "??????????????",
                      buttonTextStyle: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                      displayButtonIcon: false,
                      onSubmit: (date) => setState(() {
                        pickedDate = date;
                      }),
                    ).show(context),
            readOnly: index == 4,
            keyboardType: index == 3 ? TextInputType.phone : TextInputType.name,
            inputFormatters: index == 3
                ? [
                    MaskTextInputFormatter(
                        mask: '+# (###) ###-##-##',
                        filter: {"#": RegExp(r'[0-9]')},
                        type: MaskAutoCompletionType.lazy)
                  ]
                : null,
            decoration: InputDecoration(
                labelText: text,
                isDense: false,
                suffixIcon: Icon(icon),
                labelStyle: Theme.of(context).textTheme.labelMedium),
          ),
        );
      }),
      Spacer(
        flex: 2,
      ),
      BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => isLoading = false,
            loading: () => isLoading = true,
            errored: (message, hint) {
              isLoading = false;
              showDialog(
                  context: context,
                  builder: (ctx) {
                    return hint == null
                        ? AlertDialog(
                            content: Text(message),
                          )
                        : AlertDialog(
                            title: Text(message),
                            content: Text(hint),
                          );
                  });
            },
            addressesFinded: (addressModel) {
              isLoading = false;
              if (addressModel.isEmpty) {
                Navigator.of(context).pushNamed(SetLocationScreen.path,
                    arguments: LocationPickerMode.userAddress);
              } else {
                UserModel.get().addresses = addressModel;
                print("?????? ????????!");
              }
            },
            pdUpdated: (personalData) {
              isLoading = false;
              UserModel.get().personalData = personalData;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("???????????????????????? ???????????? ?????????????? ????????????????")));
            },
            logedIn: (login, password, email, data, addresses, company,
                employee, carts) {
              isLoading = false;
              UserModel.clearData();
              UserModel.get(
                  login: login,
                  password: password,
                  email: email,
                  courierModel: employee,
                  pd: data,
                  addresses: addresses,
                  orgmodel: company,
                  carts: carts);
            },
          );
        },
        child: isLoading
            ? CircularProgressIndicator()
            : GradientMask(
                size: 170,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, bottom: 15),
                  child: NeumorphicButton(
                      child: Center(
                        child: Text(
                          _currentModel == null ? "??????????" : "?????????????? ??????????????????",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.grey),
                        ),
                      ),
                      style: NeumorphicStyle(
                          shadowDarkColorEmboss:
                              Theme.of(context).colorScheme.secondary,
                          shadowLightColorEmboss:
                              Theme.of(context).colorScheme.primary,
                          shadowLightColor:
                              Theme.of(context).colorScheme.primary,
                          shadowDarkColor:
                              Theme.of(context).colorScheme.secondary,
                          color: Colors.white,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {
                        if (widget.model == null) {
                          if (UserModel.get().personalData == null) {
                            if (pickedDate == null ||
                                lnameController.text.isEmpty ||
                                nameController.text.isEmpty ||
                                phoneController.text.isEmpty) {
                              showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                        title: Text("????????????"),
                                        content: Text(
                                            "???????? ???? ?????????????????????? ?????????? ???? ??????????????????, ?????????????????? ??????????????"),
                                      ));
                            } else
                              context.read<AuthBloc>().add(
                                  AuthEvent.addPersonalData(
                                      birthday: pickedDate!,
                                      lname: lnameController.text,
                                      name: nameController.text,
                                      mobileNumber: phoneController.text,
                                      patronymic: patronymicController.text));
                          } else {
                            context.read<AuthBloc>().add(
                                AuthEvent.findAddressUser(
                                    UserModel.get().login));
                          }
                        } else {
                          context.read<AuthBloc>().add(
                              AuthEvent.updatePersonalData(
                                  data: UserPersonalDataModel(
                                      dateOfBirth: pickedDate!,
                                      fname: lnameController.text,
                                      name: nameController.text,
                                      mobileNumber: phoneController.text,
                                      patronymic: patronymicController.text),
                                  userLogin: UserModel.get().login));
                        }
                      }),
                )),
      )
    ]);
  }
}
