import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/presentation/home/profile/courier/courie_manage_field.dart';
import 'package:kursach/presentation/home/profile/courier/courier_orders.dart';
import 'package:kursach/presentation/home/profile/courier/courier_statistic.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CourierNavigatorWidget extends StatelessWidget {
  const CourierNavigatorWidget({Key? key}) : super(key: key);
  static const String route = "profile/couriermanage";
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      screenTransitionAnimation:
          ScreenTransitionAnimation(animateTabTransition: true),
      padding: NavBarPadding.all(0),
      context,
      navBarStyle: NavBarStyle.style9,
      screens: [
        CourierFieldManage(),
        CourierOrdersScreen(),
        CourierStatisticScreen()
      ],
      items: List.generate(3, (index) {
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
            icon = Icons.view_list;
            inActiveIcon = Icons.view_list_outlined;
            text = "Список заказов";
            break;
          case 2:
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
