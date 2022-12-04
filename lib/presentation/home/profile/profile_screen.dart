import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/domain/employee/bloc/employee_bloc.dart';
import 'package:kursach/domain/model/employee_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/orders/bloc/orders_bloc.dart';
import 'package:kursach/domain/organization/bloc/org_bloc.dart';
import 'package:kursach/presentation/auth/auth_body.dart';
import 'package:kursach/presentation/auth/auth_personal/auth_personal_screen.dart';
import 'package:kursach/presentation/auth/auth_screen.dart';
import 'package:kursach/presentation/home/profile/addresses/myaddresses_screen.dart';
import 'package:kursach/presentation/home/profile/courier/courier_navigator.dart';
import 'package:kursach/presentation/home/profile/orders/my_orders_screen.dart';
import 'package:kursach/presentation/home/profile/organization/manage_organization.dart';
import 'package:kursach/presentation/home/profile/organization/navigator_organization.dart';
import 'package:kursach/presentation/home/profile/support/my_tickets_screen.dart';
import 'package:kursach/presentation/outstanding/dialogs.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:kursach/presentation/outstanding/techsupport_card_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:rive/rive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen(
      {Key? key, required this.parentContext, required this.controller})
      : super(key: key);
  final BuildContext parentContext;
  final PersistentTabController controller;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ScrollController _controller;
  StateMachineController? _scontroller;

  @override
  void dispose() {
    _controller.dispose();
    _scontroller?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = ScrollController();

    _controller.addListener(() {});
    super.initState();
  }

  void _onInit(Artboard art) {
    var ctrl = StateMachineController.fromArtboard(art, 'State Machine 1')
        as StateMachineController;
    ctrl.isActive = false;
    art.addController(ctrl);
    setState(() {
      _scontroller = ctrl;
      _scontroller!.isActive = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _controller,
        headerSliverBuilder: (ctx, isScrollerd) {
          return [
            SliverAppBar(
                elevation: 0,
                pinned: true,
                floating: true,
                forceElevated: isScrollerd,
                backgroundColor: Theme.of(context).colorScheme.surface,
                title: //Text(UserModel.get().personalData.name + UserModel.get().personalData.fname),
                    Text(
                  "",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ))
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    UserModel.get().personalData!.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.7,
                  ),
                  ...List.generate(6, (index) {
                    late IconData icon;
                    late String title;
                    late void Function() onPressed;

                    switch (index) {
                      case 0:
                        onPressed = () {
                          context.read<OrdersBloc>().add(
                              OrdersEvent.loadUserOrders(
                                  userLogin: UserModel.get().login));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => MyOrdersScreen()));
                        };

                        icon = FontAwesomeIcons.bagShopping;
                        title = "Мои заказы";
                        break;
                      case 1:
                        onPressed = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => PersonalInfoScreen(
                                      currentModel:
                                          UserModel.get().personalData,
                                    )));

                        icon = FontAwesomeIcons.passport;
                        title = "Мои данные";
                        break;
                      case 2:
                        onPressed = () => Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => MyAddresses()));
                        icon = FontAwesomeIcons.addressCard;
                        title = "Мои адреса";
                        break;
                      case 3:
                        onPressed = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => MyTicketsScreen()));
                        icon = Icons.support_agent;
                        title = "Техническая поддержка";
                        break;
                      case 4:
                        onPressed = () {
                          if (index == 4 && _scontroller != null) {
                            var _bump = _scontroller!.findInput<bool>('Package')
                                as SMITrigger;
                            _bump.fire();
                          }
                          if (UserModel.get().courier == null) {
                            showGeneralDialog(
                                context: context,
                                pageBuilder: (ctx, _, __) {
                                  return MainDialogWidget(
                                    updateParentScreen: () => setState(() {}),
                                    isCourier: true,
                                  );
                                });
                          } else {
                            EmployeeProvider.findStatusById(
                                    UserModel.get().login)
                                .then((value) {
                              var status =
                                  (value.data!['employee'] as List<Object?>)
                                      .cast<Map<String, dynamic>>()
                                      .first['status'];
                              if (status == "Принят") {
                                Navigator.of(widget.parentContext)
                                    .pushNamed(CourierNavigatorWidget.route);
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                          content: Text(
                                              "Курьерские функции недоступны, поскольку статус вашей заявки - ${status}"),
                                        ));
                              }
                            });
                          }
                        };
                        icon = FontAwesomeIcons.magnet;
                        title = UserModel.get().courier == null
                            ? "Стать курьером!"
                            : "Меню курьера";
                        break;
                      case 5:
                        icon = UserModel.get().organizationModel == null
                            ? Icons.handshake
                            : Icons.shopify_rounded;
                        title = UserModel.get().organizationModel == null
                            ? "Сотрудничество"
                            : "Управление предприятием";

                        if (UserModel.get().organizationModel == null) {
                          onPressed = () => showGeneralDialog(
                              context: context,
                              pageBuilder: (ctx, _, __) {
                                return MainDialogWidget(
                                    updateParentScreen: () => setState(() {}));
                              });
                        } else {
                          onPressed = () =>
                              OrganizationProvider.findCompanyStatusById(
                                      companyId: UserModel.get()
                                          .organizationModel!
                                          .idCompany)
                                  .then((value) {
                                var status = value.data!['company_by_pk']
                                    ['companystatusname'];
                                if (status == "Принято") {
                                  Navigator.of(widget.parentContext).pushNamed(
                                      NavigatorOrganizationScreen.route);
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                            content: Text(
                                                "Предпренимательские функции недоступны, поскольку статус вашей заявки - ${status}"),
                                          ));
                                }
                              });
                        }

                        break;
                    }

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                      ),
                      child: ListTile(
                        onTap: onPressed,
                        leading: index == 4
                            ? SizedBox(
                                height: 40,
                                width: 25,
                                child: RiveAnimation.asset(
                                    "lib/assets/anim/delivery.riv",
                                    fit: BoxFit.fitHeight,
                                    controllers: _scontroller == null
                                        ? []
                                        : [_scontroller!],
                                    onInit: _onInit))
                            : Icon(
                                icon,
                                size: 17,
                              ),
                        title: Text(
                          title,
                          textScaleFactor: 0.8,
                        ),
                      ),
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TechSupportCard(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 20),
                    child: NeumorphicButton(
                        onPressed: () {
                          UserModel.clearData();
                          SharedPreferences.getInstance()
                              .then((value) => value.clear());
                          Navigator.pushReplacementNamed(
                              widget.parentContext, AuthScreen.route);
                        },
                        style: NeumorphicStyle(
                          depth: -5,
                        ),
                        child: Center(
                          child: Text(
                            "Выйти",
                            textScaleFactor: 1.4,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                    child: TextButton(
                        onPressed: () => null,
                        child: GradientMask(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          size: 25,
                          child: Text(
                            "Политика конфидециальности",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: Colors.white54),
                          ),
                        )),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
