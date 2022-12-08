import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemeData {
  static ThemeData light = ThemeData(
      primaryColor: primeycolor,
      scaffoldBackgroundColor: back,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primeycolor,
          onPrimary: Colors.white,
          secondary: colorgreen,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: back,
          onBackground: primeycolor,
          surface: Colors.grey,
          onSurface: Colors.white),
      appBarTheme: AppBarTheme(
          backgroundColor: primeycolor,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        subtitle1: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: primeycolor),
        subtitle2: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: colorgreen),
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primeycolor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: primeycolor,
      ));

  static ThemeData Dark = ThemeData(
      primaryColor: primeycolor,
      scaffoldBackgroundColor: back,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primeycolor,
          onPrimary: Colors.white,
          secondary: colorgreen,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: back,
          onBackground: primeycolor,
          surface: Colors.grey,
          onSurface: Colors.white),
      appBarTheme: AppBarTheme(
          backgroundColor: primeycolor,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        subtitle1: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: primeycolor),
        subtitle2: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: colorgreen),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: primeycolor,
      ));
}
