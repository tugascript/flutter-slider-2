import 'package:flutter/material.dart';

import '../models/enums/theme_enum.dart';
import '../models/extra_colors.dart';

class ThemeGenerator {
  final ThemeEnum theme;

  ThemeGenerator(this.theme);

  //____________________ DARK THEME ____________________
  static final _darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade800,
    primaryColorDark: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    colorScheme: const ColorScheme.dark(
      primary: Colors.black,
      onPrimary: Colors.white,
      secondary: Colors.grey,
    ),
  );

  static final _darkExtra = ExtraColors(
    danger: Colors.red.shade300,
    warning: Colors.yellow.shade400,
    success: Colors.green.shade300,
  );

  //____________________ LIGHT THEME ____________________

  static final _lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade200,
    primaryColorDark: Colors.indigo.shade700,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.indigo,
      onPrimary: Colors.grey.shade200,
      secondary: Colors.grey,
      onSecondary: Colors.black,
    ),
  );

  static final _lightExtra = ExtraColors(
    danger: Colors.red.shade600,
    warning: Colors.yellow.shade700,
    success: Colors.green.shade600,
  );

  ThemeData getTheme() {
    return theme == ThemeEnum.dark ? _darkTheme : _lightTheme;
  }

  ExtraColors getExtraColors() {
    return theme == ThemeEnum.dark ? _darkExtra : _lightExtra;
  }
}
