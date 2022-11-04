import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/assets/colors.dart';
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
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      screenTransitionAnimation:
          ScreenTransitionAnimation(animateTabTransition: true),
      padding: NavBarPadding.all(0),
      context,
      navBarStyle: NavBarStyle.style9,
      screens: [
        RestarauntList(),
        MarketScreen(),
        CartScreen(),
        CartScreen(),
        ProfileScreen(
          parentContext: context,
        )
      ],
      items: List.generate(5, (index) {
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
            icon = Icons.shopping_cart;
            inActiveIcon = Icons.shopping_cart_outlined;

            text = "Магазины";
            break;
          case 2:
            icon = Icons.shopping_basket;
            inActiveIcon = Icons.shopping_basket_outlined;
            text = "Корзина";
            break;
          case 3:
            icon = Icons.search;
            inActiveIcon = Icons.search;
            text = "Поиск";
            break;
          case 4:
            icon = Icons.person;
            inActiveIcon = Icons.person_outline;
            text = "Профиль";
            break;
          default:
        }

        return PersistentBottomNavBarItem(
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
    );
  }
}
