import 'package:flutter/material.dart';

final appLightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade100,
  primaryColor: Color(0xFF0583F2),
  accentColor: Colors.grey.shade900,
  fontFamily: 'Quicksand',
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
  ),
);

final appDarkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade900,
  primaryColor: Color(0xFF0583F2),
  accentColor: Colors.white,
  fontFamily: 'Quicksand',
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
  ),
);
