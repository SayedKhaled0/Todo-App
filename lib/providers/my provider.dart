import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode mode = ThemeMode.light;

  void changeLanguage(String lang) {
    if (languageCode == lang) return;
    languageCode = lang;
    notifyListeners();
  }

  void changeTheme(ThemeMode themeMode) {
    mode = themeMode;

    notifyListeners();
  }
}
