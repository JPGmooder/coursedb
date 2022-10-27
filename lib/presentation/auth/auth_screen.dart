import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kursach/assets/Icons.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/presentation/auth/auth_body.dart';
import 'package:kursach/presentation/auth/auth_main.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:rive/rive.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);
  static const String route = "/auth";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                    flex: 4,
                    child: Stack(
                      children: [
                      
                        Positioned.fill(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              GradientMask(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  size: 45,
                                  child: Icon(
                                    DeliverIcon.product_management,
                                    color: Colors.white,
                                    size: 50,
                                  )),
                              Center(
                                  child: Text(
                                "DELIVER",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: AppsColors.accentColor),
                              ))
                            ],
                          ),
                        )
                      ],
                    )),
                Expanded(
                  flex: 9,
                  child: Hero(tag: "aboba", child: AuthMain()),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}

class AnimatedBebra extends StatefulWidget {
  AnimatedBebra({Key? key}) : super(key: key);

  @override
  State<AnimatedBebra> createState() => _AnimatedBebraState();
}

class _AnimatedBebraState extends State<AnimatedBebra> {
  late RiveAnimationController animation;

  @override
  void initState() {
    animation = SimpleAnimation("animation.riv");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(
      "lib/assets/anim/animation.riv",
      controllers: [animation],
      onInit: (_) => setState(() {
        animation.isActive = true;
      }),
    );
  }
}
