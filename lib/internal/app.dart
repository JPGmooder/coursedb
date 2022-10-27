import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/place_searcher/bloc/place_searcher_bloc.dart';
import 'package:kursach/presentation/additional/location_screen.dart';
import 'package:kursach/presentation/additional/setlocation_screen.dart';
import 'package:kursach/presentation/auth/auth_personal/auth_personal_screen.dart';
import 'package:kursach/presentation/auth/auth_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => AuthBloc()),
        BlocProvider(create: (ctx) => PlaceSearcherBloc()),
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
          home: SetLocationScreen(), //AuthScreen(),
          onGenerateRoute: (settings) {
            if (settings.name == PersonalInfoScreen.route) {
              return PageRouteBuilder(
                  settings: settings,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(
                            opacity: animation,
                            child: child,
                          ),
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return PersonalInfoScreen();
                  });
            }
          }),
    );
  }
}
