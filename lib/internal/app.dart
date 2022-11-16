import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/cart/bloc/cart_bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/orders/bloc/orders_bloc.dart';
import 'package:kursach/domain/organization/bloc/org_bloc.dart';
import 'package:kursach/domain/place_searcher/bloc/place_searcher_bloc.dart';
import 'package:kursach/domain/product/bloc/product_bloc.dart';
import 'package:kursach/presentation/additional/setlocation_screen.dart';
import 'package:kursach/presentation/auth/auth_personal/auth_personal_screen.dart';
import 'package:kursach/presentation/auth/auth_screen.dart';
import 'package:kursach/presentation/home/navigator_screen.dart';
import 'package:kursach/presentation/home/profile/organization/manage_organization.dart';
import 'package:kursach/presentation/home/profile/organization/navigator_organization.dart';
import 'package:kursach/presentation/home/profile/partnership/partnership_reg.dart';
import 'package:kursach/presentation/outstanding/loadin_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.ulogin, this.uPassword);
  final String? ulogin;
  final String? uPassword;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => AuthBloc()),
        BlocProvider(create: (ctx) => PlaceSearcherBloc()),
        BlocProvider(create: (ctx) => OrganizationBloc()),
        BlocProvider(create: (ctx) => ProductBloc()),
        BlocProvider(create: (ctx) => OrdersBloc())
      ],
      child: MaterialApp(
          title: 'Material App',
          theme: ThemeData(
              textTheme: TextTheme(
                  titleLarge: GoogleFonts.cormorantGaramond(
                      fontWeight: FontWeight.bold, fontSize: 40),
                  titleMedium: GoogleFonts.cormorantGaramond(
                      fontWeight: FontWeight.bold, fontSize: 22),
                  labelMedium: GoogleFonts.cormorantGaramond(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey[500])),
              colorScheme: ColorScheme(
                  brightness: Brightness.light,
                  primary: AppsColors.primaryColor,
                  onPrimary: Colors.white,
                  secondary: AppsColors.accentColor,
                  onSecondary: Colors.white,
                  error: Colors.red,
                  onError: Colors.white,
                  background: AppsColors.backgrounLight,
                  onBackground: AppsColors.primaryColor,
                  surface: Colors.white,
                  onSurface: AppsColors.accentColor)),
          home: AppBody(login: ulogin, password: uPassword),
          onGenerateRoute: (settings) {
            return PageRouteBuilder(
                settings: settings,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(
                          opacity: animation,
                          child: child,
                        ),
                pageBuilder: (context, animation, secondaryAnimation) {
                  late Widget screen;
                  switch (settings.name) {
                    case AuthScreen.route:
                      screen = const AuthScreen();
                      break;
                    case PersonalInfoScreen.route:
                      screen = const PersonalInfoScreen();
                      break;
                    case SetLocationScreen.path:
                      screen = SetLocationScreen(
                        currentMode: settings.arguments as LocationPickerMode,
                      );
                      break;
                    case NavigatorScreen.route:
                      screen = NavigatorScreen();
                      break;
                    case PartnerShipReg.route:
                      screen = PartnerShipReg(
                        pickedAddress: settings.arguments as AddressModel,
                      );
                      break;
                    case NavigatorOrganizationScreen.route:
                      screen = NavigatorOrganizationScreen();
                      break;
                    default:
                  }

                  return screen;
                });
          }),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({Key? key, this.login, this.password}) : super(key: key);
  final String? login;
  final String? password;

  @override
  Widget build(BuildContext context) {
    return login != null && password != null
        ? LoadinScreen(
            login: login!,
            password: password!,
          )
        : AuthScreen();
  }
}
