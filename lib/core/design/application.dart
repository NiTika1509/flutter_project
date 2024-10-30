import 'package:flutter_project/core/route/router.dart';
import 'package:flutter/material.dart';


class Application extends StatelessWidget {
  Application({super.key});

  final AppRouter _routerConfig = AppRouter();

  final ThemeData _lightTheme = ThemeData(
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(
        backgroundColor:  Colors.white,
        centerTitle: true
    ),
    scaffoldBackgroundColor: const Color(0xFF272B33),
    textTheme: const TextTheme(
        headlineMedium: TextStyle(
            color: Colors.white
        ),
        titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w600
        ),
        titleMedium: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600
        ),
        bodyLarge: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
        ),
        bodyMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white
        ),
        bodySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black45
        )
    ),
    useMaterial3: true,
  );

  final ThemeData _darkTheme = ThemeData(
    primaryColor: const Color.fromRGBO(255, 227, 0, 1),
    appBarTheme: const AppBarTheme(
        backgroundColor:  Color.fromRGBO(0, 0, 0, 1),
        centerTitle: true
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1),
    colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(255, 227, 0, 1)),
    // primaryColor: Color()
    textTheme: const TextTheme(
        headlineMedium: TextStyle(
            color: Colors.white
        ),
        titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w600
        ),
        titleMedium: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600
        ),
        bodyLarge: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
        ),
        bodyMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white
        ),
        bodySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black45
        )
    ),
    useMaterial3: true,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Рик и Морти - справочник вселенной',
      theme: _lightTheme,
      darkTheme: _darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: _routerConfig.config()
    );
  }
}