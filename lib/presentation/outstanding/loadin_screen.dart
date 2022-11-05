import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/auth/auth_screen.dart';
import 'package:kursach/presentation/home/navigator_screen.dart';
import 'package:rive/rive.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadinScreen extends StatefulWidget {
  LoadinScreen({Key? key, required this.login, required this.password})
      : super(key: key);
  String login;
  String password;
  @override
  State<LoadinScreen> createState() => _LoadinScreenState();
}

class _LoadinScreenState extends State<LoadinScreen> {
  RiveAnimationController? _controller;
  SMIBool? _firstPackage;
  SMIBool? _secondPackage;
  SMIBool? _thirdPackage;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _onRiveInit(
    Artboard artboard,
  ) {
    setState(() {
      final _controller =
          StateMachineController.fromArtboard(artboard, 'State Machine 1');
      artboard.addController(_controller!);
      _firstPackage = _controller.findInput<bool>('Box_2') as SMIBool;
      _secondPackage = _controller.findInput<bool>('Box_3') as SMIBool;
      _thirdPackage = _controller.findInput<bool>('Box_4') as SMIBool;
    });
    Future.delayed(Duration(seconds: 1))
        .then((value) => _firstPackage!.value = true);
    context
        .read<AuthBloc>()
        .add(AuthEvent.logIn(widget.login, widget.password));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () => null,
            loading: () {
              _secondPackage!.value = true;
            },
            errored: (error) {
              SharedPreferences.getInstance().then((prefs) {
                prefs.clear().then((value) {
                  Navigator.of(context).pushReplacementNamed(AuthScreen.route);
                });
              });
            },
            logedIn: (login, password, email, data, address, org) {
              _thirdPackage!.value = true;
              Future.delayed(Duration(seconds: 1)).then((value) {
                UserModel.get(
                    login: login,
                    password: password,
                    email: email,
                    pd: data,
                    addresses: address, 
                    orgmodel: org);
                Navigator.of(context)
                    .pushReplacementNamed(NavigatorScreen.route);
              });
            });
      },
      child: Scaffold(
        body: ColoredBox(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                left: MediaQuery.of(context).size.width * 0.35,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Transform.scale(scale: 1.5, child: LogoWidget())),
              ),
              Center(
                child: Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: RiveAnimation.asset(
                        "lib/assets/anim/logistic_box.riv",
                        onInit: _onRiveInit,
                        controllers: _controller == null ? [] : [_controller!],
                      ),
                    ),
                    Positioned(
                        left: MediaQuery.of(context).size.width * 0.05,
                        bottom: 0,
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              Text(
                                "ДОСТАВИМ ",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              AnimatedTextKit(
                                isRepeatingAnimation: true,
                                repeatForever: true,
                                animatedTexts: [
                                  RotateAnimatedText('ПРОДУКТЫ',
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: AppsColors.accentColor,
                                          )),
                                  RotateAnimatedText('ЕДУ',
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: AppsColors.primaryColor,
                                          )),
                                  RotateAnimatedText('БЫСТРО',
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: AppsColors.accentColor,
                                          )),
                                ],
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
