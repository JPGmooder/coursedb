import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

    BlocProvider.of<AuthBloc>(context).stream.listen((event) {
      event.maybeWhen(
          orElse: () => null,
          signedUp: (login, password, email) {
            UserModel.get(login: login, password: password, email: email);
            Navigator.of(context).pushNamed(PersonalInfoScreen.route);
          },
          addressesFinded: (addressModel) {
            if (addressModel.isEmpty) {
              Navigator.of(context).pushNamed(SetLocationScreen.path);
            } else {
              UserModel.get().addresses = addressModel;
              print("ВСЁ ЕСТЬ!");
            }
          },
          logedIn: (login, password, email, pd) {
            UserModel.get(
                login: login, password: password, email: email, pd: pd);
            if (pd == null) {
              Navigator.of(context).pushNamed(PersonalInfoScreen.route);
            } else if (UserModel.get().addresses == null ||
                UserModel.get().addresses!.isEmpty) {
              context.read<AuthBloc>().add(AuthEvent.findAddressUser(login));
            }
          },
          errored: (error) {
            print(error.toString());
            showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                      content: Text(error),
                    ));
          });
    });

    super.initState();
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
              ...List.generate(
                  widget.isLoginState ? 1 : 2,
                  (index) => TextFormField(
                        controller:
                            index == 0 ? _loginController : _emailController,
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
                          validator: index == 0
                              ? (value) => RegExp(
                                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                                      .hasMatch(value!)
                                  ? null
                                  : "Пароль должен содержать 8 латинский символов, с заглавной, прописной буквой и 1 цифрой"
                              : (value) => value != _passwordController.text
                                  ? "Пароли не совпадают, повторите попытку"
                                  : null,
                          obscureText: isObscured,
                          style: TextStyle(
                              color: currentGradientSize == null
                                  ? Colors.black
                                  : Colors.white),
                          decoration: InputDecoration(
                              labelText:
                                  index == 0 ? "Пароль" : "Повторите пароль",
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
                                      ? "Войти"
                                      : "Зарегистрироваться",
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
                                  : context.read<AuthBloc>().add(
                                      AuthEvent.regNew(
                                          _loginController.text,
                                          _passwordController.text,
                                          _emailController.text)),
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
