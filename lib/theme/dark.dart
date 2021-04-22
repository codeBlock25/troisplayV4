import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: const Color(0xFF0E0E0E),
  accentColor: const Color(0xFF0042EC),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF0042EC),
      elevation: 10,
      focusElevation: 11,
      splashColor: Colors.white24),
  brightness: Brightness.dark,
  splashColor: Colors.white24,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    ),
    filled: true,
    contentPadding: const EdgeInsets.all(20),
    fillColor: Colors.white.withOpacity(0.05),
  ),
  appBarTheme: const AppBarTheme(
    color: Color(0xFF0E0E0E),
    elevation: 0,
    shadowColor: Colors.transparent,
    centerTitle: true,
  ),
);
