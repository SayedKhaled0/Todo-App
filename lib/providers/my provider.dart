import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String dropdownvalue = "en";

  void changeLanguage(String value) {
    dropdownvalue = value;
    notifyListeners();
  }

  ThemeMode dropdownvalue2 = ThemeMode.light;

  void changeTheme(ThemeMode value) {
    dropdownvalue2 = value;

    notifyListeners();
  }
}
