import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/models/enums/theme_enum.dart';
import '../components/models/extra_colors.dart';

class ThemeGenerator {
  final ThemeEnum theme;

  ThemeGenerator(this.theme);

  //____________________ DARK THEME ____________________
  static final _darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade800,
    primaryColorDark: Colors.black,
    primaryColorLight: Colors.grey.shade600,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: GoogleFonts.josefinSansTextTheme(
      const TextTheme(
        bodyText1: TextStyle(color: Colors.white),
      ),
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
    primaryColorDark: Colors.indigo.shade800,
    primaryColorLight: const Color(0xFF13B9FD),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    textTheme: GoogleFonts.josefinSansTextTheme(),
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF02569B),
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

  ThemeData get getTheme {
    return theme == ThemeEnum.dark ? _darkTheme : _lightTheme;
  }

  ExtraColors get getExtraColors {
    return theme == ThemeEnum.dark ? _darkExtra : _lightExtra;
  }
}
