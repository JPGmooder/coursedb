import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/cart/bloc/cart_bloc.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/product/bloc/product_bloc.dart';
import 'package:kursach/presentation/home/cart/cart.dart';
import 'package:kursach/presentation/home/markets/markets_list.dart';
import 'package:kursach/presentation/home/profile/profile_screen.dart';
import 'package:kursach/presentation/home/restaurant/restaraunt_screen.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavigatorScreen extends StatefulWidget {
  NavigatorScreen({Key? key}) : super(key: key);
  static const String route = "/home";
  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  late PersistentTabController _controller;
  @override
  void initState() {
    _controller = PersistentTabController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => CartBloc(),
      child: PersistentTabView(
        controller: _controller,
        screenTransitionAnimation:
            ScreenTransitionAnimation(animateTabTransition: true),
        padding: NavBarPadding.all(0),
        context,
        navBarStyle: NavBarStyle.style9,
        screens: [
          RestarauntList(controller: _controller,),
          CartScreen(controller: _controller),
          ProfileScreen(
            controller: _controller,
            parentContext: context,
          )
        ],
        items: List.generate(3, (index) {
          late IconData icon;
          late IconData inActiveIcon;

          late String text;

          switch (index) {
            case 0:
              icon = Icons.food_bank;
              inActiveIcon = Icons.food_bank_outlined;
              text = "Рестораны";
              break;

            case 1:
              icon = Icons.shopping_basket;
              inActiveIcon = Icons.shopping_basket_outlined;
              text = "Корзина";
              break;
            case 2:
              icon = Icons.person;
              inActiveIcon = Icons.person_outline;
              text = "Профиль";
              break;
            default:
          }

          return index == 2
              ? PersistentBottomNavBarItem(
                  icon: CartIconWidget(
                      icon: GradientMask(
                          size: 25,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          child: Icon(
                            icon,
                            color: Colors.white,
                          ))),
                  activeColorPrimary: AppsColors.accentColor,
                  title: text,
                  inactiveIcon: CartIconWidget(icon: Icon(inActiveIcon)),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ))
              : PersistentBottomNavBarItem(
                  icon: GradientMask(
                      size: 25,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                  activeColorPrimary: AppsColors.accentColor,
                  title: text,
                  inactiveIcon: Icon(inActiveIcon),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ));
        }),
      ),
    );
  }
}

class CartIconWidget extends StatefulWidget {
  const CartIconWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final Widget icon;

  @override
  State<CartIconWidget> createState() => _cartIconWidgetState();
}

class _cartIconWidgetState extends State<CartIconWidget> {
  late String currentNum;
  @override
  void initState() {
    var activeCart =
        UserModel.get().carts.firstWhere((element) => element.isActive);
    if (activeCart.items.isEmpty) {
      currentNum = "";
    } else {
      var currentCount = activeCart.items
          .map((e) => e.amount)
          .reduce((value, element) => value + element);
      currentNum = "${currentCount > 99 ? '99+' : currentCount}";
    }
    activeCart.addListener(() {
      var currentCount = activeCart.items
          .map((e) => e.amount)
          .reduce((value, element) => value + element);
      // setState(() {
      //   currentNum = "${currentCount > 99 ? '99+' : currentCount}";
      // });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.icon,
        Positioned(
          right: 0,
          top: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: ColoredBox(
                color: Colors.red,
                child: SizedBox.square(
                  dimension: 10,
                  child: Center(child: Text(currentNum)),
                )),
          ),
        )
      ],
    );
  }
}
