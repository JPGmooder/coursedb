import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/presentation/home/navigator_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/additional/setlocation_screen.dart';
import 'package:kursach/presentation/auth/auth_personal/auth_personal_screen.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class AuthBody extends StatefulWidget {
  const AuthBody({Key? key, required this.isLoginState}) : super(key: key);
  final bool isLoginState;
  @override
  State<AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
  late TextEditingController _loginController;
  late TextEditingController _passwordController;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _repeaterController = TextEditingController();
  late StreamSubscription<AuthState> bsub;
  double? currentGradientSize;
  bool isObscured = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _loginController = TextEditingController();
    _passwordController = TextEditingController();

    _passwordController.addListener(() {
      if (_passwordController.text.isNotEmpty) {
        setState(() {
          currentGradientSize = 50 + (_passwordController.text.length * 4);
        });
      } else {
        setState(() {
          currentGradientSize = null;
        });
      }
    });

    bsub = BlocProvider.of<AuthBloc>(context).stream.listen((event) {
      event.maybeWhen(
          orElse: () => null,
          signedUp: (login, password, email) {
            UserModel.get(login: login, password: password, email: email);
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.of(context).pushNamed(PersonalInfoScreen.route);
            });
          },
          addressesFinded: (addressModel) {
            if (addressModel.isEmpty) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.of(context).pushNamed(SetLocationScreen.path,
                    arguments: LocationPickerMode.userAddress);
              });
            } else {
              UserModel.get().addresses = addressModel;
              print("?????? ????????!");
            }
          },
          logedIn: (login, password, email, pd, address, org, employee, carts) {
            UserModel.get(
                login: login,
                password: password,
                email: email,
                pd: pd,
                courierModel: employee,
                addresses: address,
                orgmodel: org,
                carts: carts);
            if (pd == null) {
              Navigator.of(context).pushNamed(PersonalInfoScreen.route);
            } else if (UserModel.get().addresses == null ||
                UserModel.get().addresses!.isEmpty) {
              context.read<AuthBloc>().add(AuthEvent.findAddressUser(login));
            } else {
              Navigator.of(context).pushNamed(NavigatorScreen.route);
            }
          },
          errored: (error, hint) {
            print(error.toString());
            showDialog(
                context: context,
                builder: (ctx) => hint == null
                    ? AlertDialog(
                        content: Text(error),
                      )
                    : AlertDialog(
                        title: Text(error),
                        content: Text(hint),
                      ));
          });
    });

    super.initState();
  }

  @override
  void dispose() {
    bsub.cancel();
    _loginController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _repeaterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formKey,
          onChanged: () {
            if (_formKey.currentState!.validate() != false) {}
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "????????????????????????",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "?????????????? ?? ???????? ??????????????",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
              ...List.generate(
                  widget.isLoginState ? 1 : 2,
                  (index) => TextFormField(
                        controller:
                            index == 0 ? _loginController : _emailController,
                        validator: !widget.isLoginState && index == 0
                            ? (value) {
                                if (value == null || value.isEmpty) {
                                  return "???????? ???? ???????????? ???????? ????????????";
                                } else if (value.trim().length < 5) {
                                  return "?????????? ???????????? ?????????????????? ?????????????? 5 ????????????????";
                                } else if (RegExp(r'[^a-zA-Z]')
                                    .hasMatch(value)) {
                                  return "?????????? ???????????? ?????????????????? ???????????? ?????????????????? ??????????????";
                                }
                              }
                            : null,
                        decoration: InputDecoration(
                            labelText: index == 0 ? "Login" : "E-Mail",
                            isDense: false,
                            suffixIcon: Icon(
                              index == 0 ? Icons.person : Icons.email,
                            ),
                            labelStyle:
                                Theme.of(context).textTheme.labelMedium),
                      )),
              ...List.generate(
                  widget.isLoginState ? 1 : 2,
                  (index) => GradientMask(
                        size: currentGradientSize ?? 0,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        child: TextFormField(
                          controller: index == 0
                              ? _passwordController
                              : _repeaterController,
                          validator: widget.isLoginState
                              ? null
                              : index == 0
                                  ? (value) => RegExp(
                                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                                          .hasMatch(value!)
                                      ? null
                                      : "???????????? ???????????? ?????????????????? 8 ?????????????????? ????????????????, ?? ??????????????????, ?????????????????? ???????????? ?? 1 ????????????"
                                  : (value) => value != _passwordController.text
                                      ? "???????????? ???? ??????????????????, ?????????????????? ??????????????"
                                      : null,
                          obscureText: isObscured,
                          style: TextStyle(
                              color: currentGradientSize == null
                                  ? Colors.black
                                  : Colors.white),
                          decoration: InputDecoration(
                              labelText:
                                  index == 0 ? "????????????" : "?????????????????? ????????????",
                              isDense: false,
                              suffixIcon: IconButton(
                                onPressed: () => setState(() {
                                  isObscured = !isObscured;
                                }),
                                icon: Icon(
                                    isObscured ? Icons.key : Icons.key_off),
                              ),
                              labelStyle:
                                  Theme.of(context).textTheme.labelMedium),
                        ),
                      )),
              Spacer(
                flex: 2,
              ),
              GradientMask(
                size: 170,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        loading: () => const SizedBox.square(
                            dimension: 50, child: CircularProgressIndicator()),
                        orElse: () => NeumorphicButton(
                              child: Center(
                                child: Text(
                                  widget.isLoginState
                                      ? "??????????"
                                      : "????????????????????????????????????",
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
                              onPressed: () => widget.isLoginState
                                  ? context.read<AuthBloc>().add(
                                      AuthEvent.logIn(_loginController.text,
                                          _passwordController.text))
                                  : {
                                      if (_formKey.currentState!.validate())
                                        {
                                          context.read<AuthBloc>().add(
                                              AuthEvent.regNew(
                                                  _loginController.text,
                                                  _passwordController.text,
                                                  _emailController.text))
                                        }
                                    },
                            ));
                  },
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
