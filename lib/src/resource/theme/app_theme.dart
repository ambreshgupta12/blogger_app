import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData themeData() {
    return ThemeData(
      fontFamily: 'Campton',
      textTheme: TextTheme(
        subtitle1: _h6,
        subtitle2: _h8,
        headline1: _h10,
        headline2: _h12,
        headline3: _h14,
        headline4: _h16,
        headline5: _h18,
        headline6: _h20,
        bodyText1: _h24,
        bodyText2: _h30,
        overline: _h32,
      ),
      cardColor: KColors.whiteFCD,
      brightness: Brightness.light,

    );
  }

  static TextStyle _h6 = TextStyle(
    fontSize: 6,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );

  static TextStyle _h8 = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );

  static TextStyle _h10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );

  static TextStyle _h12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );

  static TextStyle _h14 = TextStyle(
    color: KColors.primaryBlue,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static TextStyle _h16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );
  static TextStyle _h18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );
  static TextStyle _h20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );
  static TextStyle _h24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );
  static TextStyle _h30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );
  static TextStyle _h32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: KColors.primaryBlue,
  );
}
