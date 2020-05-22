// Flutter imports
import 'package:flutter/material.dart';

class Themes {
  final _fontFamily = 'Fjalla One';

  final _primaryColor = Color(0xff9c27b0);
  final _primaryColorDark = Color(0xff6a0080);
  final _primaryColorLight = Color(0xffcf5ce2);
  final _secondaryColor = Color(0xffffc107);

  ThemeData get dark => ThemeData(
        fontFamily: _fontFamily,
        brightness: Brightness.dark,
        primaryColor: _primaryColor,
        primaryColorDark: _primaryColorDark,
        primaryColorLight: _primaryColorLight,
        accentColor: _secondaryColor,
        scaffoldBackgroundColor: Colors.black,
      );

  ThemeData get light => ThemeData(
        fontFamily: _fontFamily,
        brightness: Brightness.light,
        primaryColor: _primaryColor,
        primaryColorDark: _primaryColorDark,
        primaryColorLight: _primaryColorLight,
        accentColor: _secondaryColor,
        scaffoldBackgroundColor: Colors.white,
      );
}
