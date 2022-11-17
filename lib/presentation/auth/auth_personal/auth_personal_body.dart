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
  const PersonalInfoBody({Key? key}) : super(key: key);

  @override
  State<PersonalInfoBody> createState() => _PersonalInfoBodyState();
}

class _PersonalInfoBodyState extends State<PersonalInfoBody> {
  late TextEditingController nameController,
      lnameController,
      patronymicController,
      phoneController;
  DateTime? pickedDate;

  @override
  void initState() {
    nameController = TextEditingController();
    lnameController = TextEditingController();
    patronymicController = TextEditingController();
    phoneController = TextEditingController();

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
                "Персональные данные",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Введите ваши персональные данные, чтобы мы знали как к вам обращаться.",
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
            text = "Имя";
            icon = Icons.person;
            _controller = nameController;
            break;
          case 1:
            text = "Фамилия";
            icon = Icons.family_restroom;
            _controller = lnameController;
            break;
          case 2:
            text = "Отчество";
            icon = Icons.male;
            _controller = patronymicController;
            break;
          case 3:
            text = "Номер телефона";
            icon = FontAwesomeIcons.phone;
            _controller = phoneController;
            break;
          case 4:
            text = "Дата рождения";
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
                      title: "Выберите день своего рождения",
                      titleStyle: Theme.of(context).textTheme.titleMedium!,
                      description:
                          "Лица младше 16 лет не могут быть зарегистрированы в приложении",
                      descriptionStyle:
                          Theme.of(context).textTheme.labelMedium!,
                      initialDateTime: pickedDate,
                      maxDateTime: DateTime.now(),
                      dismissable: true,
                      buttonText: "Принять",
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
      BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          state.maybeWhen(
            orElse: () => Container(),
            loading: () => CircularProgressIndicator(),
            addressesFinded: (addressModel) {
              if (addressModel.isEmpty) {
                Navigator.of(context).pushNamed(SetLocationScreen.path,
                    arguments: LocationPickerMode.userAddress);
              } else {
                UserModel.get().addresses = addressModel;
                print("ВСЁ ЕСТЬ!");
              }
            },
            logedIn: (login, password, email, data, addresses, company, employee,  carts) {
              UserModel.clearData();
              UserModel.get(
                  login: login,
                  password: password,
                  email: email,
                  courierModel: employee,
                  pd: data,
                  addresses: addresses,
                  orgmodel: company,
                  carts: carts
                  );
            },
          );
          return GradientMask(
              size: 170,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 15),
                child: NeumorphicButton(
                    child: Center(
                      child: Text(
                        "Далее",
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
                        shadowLightColor: Theme.of(context).colorScheme.primary,
                        shadowDarkColor:
                            Theme.of(context).colorScheme.secondary,
                        color: Colors.white,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.all(Radius.circular(10)))),
                    onPressed: () {
                      if (UserModel.get().personalData == null) {
                        context.read<AuthBloc>().add(AuthEvent.addPersonalData(
                            birthday: pickedDate!,
                            lname: lnameController.text,
                            name: nameController.text,
                            mobileNumber: phoneController.text,
                            patronymic: patronymicController.text));
                      } else {
                        context.read<AuthBloc>().add(
                            AuthEvent.findAddressUser(UserModel.get().login));
                      }
                    }),
              ));
        },
      )
    ]);
  }
}
