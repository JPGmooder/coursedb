import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursachdesktop/domain/auth/bloc/auth_bloc.dart';
import 'package:kursachdesktop/domain/model/user_model.dart';
import 'package:kursachdesktop/view/navigator_screen.dart';
import 'package:kursachdesktop/view/outsanding/gradientmask.dart';

class AuthBody extends StatefulWidget {
  const AuthBody({Key? key}) : super(key: key);
  @override
  State<AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
  late TextEditingController _loginController;
  late TextEditingController _passwordController;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _repeaterController = TextEditingController();
  double? currentGradientSize;
  bool isRemember = false;
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

    super.initState();
  }

  @override
  void dispose() {
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
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Form(
          key: _formKey,
          onChanged: () {
            if (_formKey.currentState!.validate() != false) {}
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Здравствуйте",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "Войдите в свой аккаунт",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
              TextFormField(
                controller: _loginController,
                decoration: InputDecoration(
                    labelText: "Login",
                    isDense: false,
                    suffixIcon: Icon(
                      Icons.person,
                    ),
                    labelStyle: Theme.of(context).textTheme.labelMedium),
              ),
              GradientMask(
                size: currentGradientSize ?? 0,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: isObscured,
                  style: TextStyle(
                      color: currentGradientSize == null
                          ? Colors.black
                          : Colors.white),
                  decoration: InputDecoration(
                      labelText: "Пароль",
                      isDense: false,
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          isObscured = !isObscured;
                        }),
                        icon: Icon(isObscured ? Icons.key : Icons.key_off),
                      ),
                      labelStyle: Theme.of(context).textTheme.labelMedium),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Запомнить данные",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    value: isRemember,
                    onChanged: (value) => setState(() {
                          isRemember = value ?? false;
                        })),
              ),
              Spacer(),
              GradientMask(
                size: 170,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                child: BlocConsumer<AuthBloc, AuthState>(
                  listener: (ctx, state) {
                    state.maybeWhen(
                        orElse: () => null,
                        logedIn: (login, password, email, data, post) {
                          UserModel.get(
                              postName: post,
                              login: login,
                              password: password,
                              email: email,
                              pd: data);
                          Navigator.of(context)
                              .pushReplacementNamed(NavigatorScreen.route,
                                  arguments: post == "Администратор"
                                      ? NavigatorMode.admin
                                      : post == "Сотрудник"
                                          ? NavigatorMode.employee
                                          : NavigatorMode.operator);
                        },
                        errored: (error) => showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                                  content: Text(error
                                      .toString()
                                      .replaceAll("Exception: ", "")),
                                )));
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                        loading: () => const SizedBox.square(
                            dimension: 50, child: CircularProgressIndicator()),
                        orElse: () => ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width >
                                          700
                                      ? MediaQuery.of(context).size.width * 0.25
                                      : double.infinity),
                              child: NeumorphicButton(
                                padding:
                                    MediaQuery.of(context).size.height < 600
                                        ? EdgeInsets.zero
                                        : null,
                                child: Center(
                                  child: Text(
                                    "Войти",
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
                                onPressed: () => context.read<AuthBloc>().add(
                                    AuthEvent.logIn(_loginController.text,
                                        _passwordController.text, isRemember)),
                              ),
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
