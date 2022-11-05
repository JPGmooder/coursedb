import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/presentation/home/cart/cart.dart';
import 'package:kursach/presentation/home/markets/markets_list.dart';
import 'package:kursach/presentation/home/profile/organization/manage_organization.dart';
import 'package:kursach/presentation/home/profile/organization/statistic_organization.dart';
import 'package:kursach/presentation/home/profile/profile_screen.dart';
import 'package:kursach/presentation/home/restaurant/restaraunt_screen.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavigatorOrganizationScreen extends StatefulWidget {
  NavigatorOrganizationScreen({Key? key}) : super(key: key);
  static const String route = "/org/home";
  @override
  State<NavigatorOrganizationScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorOrganizationScreen> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      screenTransitionAnimation:
          ScreenTransitionAnimation(animateTabTransition: true),
      padding: NavBarPadding.all(0),
      context,
      navBarStyle: NavBarStyle.style9,
      screens: [
        ManageOrganization(),
        StatisticOrganizationScreen()
      ],
      items: List.generate(2, (index) {
        late IconData icon;
        late IconData inActiveIcon;

        late String text;

        switch (index) {
          case 0:
            icon = Icons.home_repair_service_rounded;
            inActiveIcon = Icons.home_repair_service_outlined;
            text = "Управление";
            break;
          case 1:
            icon = Icons.auto_graph_rounded;
            inActiveIcon = Icons.auto_graph_outlined;

            text = "Статистика";
            break;
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
