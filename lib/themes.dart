import 'package:flutter/material.dart';

import 'package:logan_boisvert_website/widgets/colors.dart';

class Themes {

  final _fontFamily = "Fjalla One";

  ThemeData get mainTheme => ThemeData(
    brightness: Brightness.dark,
    canvasColor: ThemeColors.primary,
    fontFamily: _fontFamily,
    primaryColor: ThemeColors.primary,
    accentColor: ThemeColors.accent,
    appBarTheme: AppBarTheme(
      color: ThemeColors.accent
    )
  );

}