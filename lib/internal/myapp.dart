import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kursachdesktop/data/colors.dart';
import 'package:kursachdesktop/domain/auth/bloc/auth_bloc.dart';
import 'package:kursachdesktop/view/auth/auth_screen.dart';
import 'package:kursachdesktop/view/navigator_screen.dart';
import 'package:kursachdesktop/view/outsanding/loading_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
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
        home: AuthScreen(),
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
                  case NavigatorScreen.route:
                    screen = NavigatorScreen(
                      mode: settings.arguments as NavigatorMode,
                    );
                    break;
                  default:
                }

                return screen;
              });
        },
      ),
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
