import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursachdesktop/domain/admin/employees/employees_cubit.dart';
import 'package:kursachdesktop/domain/admin/users/users_cubit.dart';

import 'package:kursachdesktop/domain/employee/courier/courier_cubit.dart';
import 'package:kursachdesktop/domain/employee/organizations/organization_cubit.dart';
import 'package:kursachdesktop/domain/support/support_cubit.dart';

import 'package:kursachdesktop/view/admin/employee_screen.dart';
import 'package:kursachdesktop/view/admin/settings_screen.dart';
import 'package:kursachdesktop/view/admin/users.dart';
import 'package:kursachdesktop/view/employee/couriers/courier_screen.dart';
import 'package:kursachdesktop/view/employee/dashboard/dashboard_screen.dart';
import 'package:kursachdesktop/view/employee/organizations/organization_screen.dart';
import 'package:kursachdesktop/view/operator/orders_screen.dart';
import 'package:kursachdesktop/view/operator/statistic_screen.dart';
import 'package:kursachdesktop/view/outsanding/mainscreen_navigator.dart';
import 'package:kursachdesktop/view/employee/profile/profile_screen.dart';

enum NavigatorMode { admin, employee, operator }

class NavigatorScreen extends StatefulWidget {
  NavigatorScreen({Key? key, required this.mode}) : super(key: key);
  final NavigatorMode mode;
  static const String route = "/navigator";

  List<Widget> pages(NavigatorMode mode) {
    switch (mode) {
      case NavigatorMode.admin:
        return [UsersScreen(), EmployeeScreen(), SettingsScreen()];
      case NavigatorMode.employee:
        return [
          DashboardScreen(),
          OrganizationScreen(),
          CouriersScreen(),
          ProfileScreen()
        ];
      case NavigatorMode.operator:
        return [OrdersScreen(), StatisticScreen()];
        break;
      default:
    }
    return [];
  }

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen>
    with SingleTickerProviderStateMixin {
  void Function()? onPressedToPop;
  late TabController _controller;
  Widget? _currentPage;
  @override
  void initState() {
    _controller = TabController(
        length: widget.pages(widget.mode).length, vsync: this, initialIndex: 0);
    _controller.addListener(() => _changePage(_controller.index));

    super.initState();
  }

  void _changePage(int index) {
    setState(() {
      _currentPage = widget.pages(widget.mode)[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height,
          child: MainScreenSwitcher(
              //* Навигационный элемент для альбомной ориентации.
              onPressedToPop: onPressedToPop,
              controller: _controller,
              changeTab: (index) {
                late IconData currentIcon;
                late String currentText;
                switch (widget.mode) {
                  case NavigatorMode.admin:
                    switch (index) {
                      case 0:
                        currentText = "Пользователи";
                        currentIcon = Icons.person;
                        break;

                      case 1:
                        currentText = "Сотрудники";
                        currentIcon = FontAwesomeIcons.personBiking;
                        break;
                      case 2:
                        currentText = "Настройки БД";
                        currentIcon = Icons.settings;
                        break;
                    }
                    break;
                  case NavigatorMode.employee:
                    switch (index) {
                      case 0:
                        currentText = "Панель управления";
                        currentIcon = Icons.precision_manufacturing_outlined;
                        break;
                      case 1:
                        currentText = "Аккаунт";
                        currentIcon = Icons.person;
                        break;
                      case 2:
                        currentText = "Организации";
                        currentIcon = Icons.cases_rounded;
                        break;
                      case 3:
                        currentText = "Курьеры";
                        currentIcon = FontAwesomeIcons.bicycle;
                        break;
                    }
                    break;
                  case NavigatorMode.operator:
                    switch (index) {
                      case 0:
                        currentText = "Статистика";
                        currentIcon = Icons.auto_graph_sharp;
                        break;
                      case 1:
                        currentText = "Заявки";
                        currentIcon = Icons.list_alt_rounded;
                        break;
                    }
                    break;
                  default:
                }
                return {"icon": currentIcon, "text": currentText};
              }),
        ),
        Expanded(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => UsersCubit(),
              ),
              BlocProvider(
                create: (context) => EmployeesCubit(),
              ),
              BlocProvider(create: (ctx) => CourierCubit()),
              BlocProvider(create: (ctx) => OrganizationCubit()),
              BlocProvider(create: (ctx) => SupportCubit())
            ],
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: widget.pages(widget.mode)[_controller.index],
            ),
          ),
        )
      ]),
    );
  }
}
