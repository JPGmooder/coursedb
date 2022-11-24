import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kursachdesktop/assets/Icons.dart';
import 'package:kursachdesktop/data/colors.dart';
import 'package:kursachdesktop/view/auth/auth_body.dart';
import 'package:kursachdesktop/view/outsanding/gradientmask.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);
  static const String route = "/auth";

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(flex: 6, child: LogoWidget()),
          Expanded(
            flex: 9,
            child: Hero(
                tag: "aboba",
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: currentWidth < 500
                          ? currentWidth * 0.8
                          : currentWidth * 0.4,
                    ),
                    child: AuthBody())),
          ),
          Spacer(
            flex: currentWidth < 600 ? 1 : 3,
          )
        ],
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
