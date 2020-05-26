// Flutter imports:
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.system;

  ThemeChanger();

  changeCurrentTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    notifyListeners();
  }
}
