import 'package:flutter/material.dart';

// You can also just let this float around in the file without encapsulating
// in a class. Then you'll have to make sure that system wide you don't have
// duplicate variable names.
class KColors {
  static const Color black = Colors.black;
  static const Color deepOrange = Colors.deepOrange;
  static  Color deepOrangeShade100 = Colors.deepOrange.shade100;
  static  Color white = Colors.white;

  static const Color whiteFCD = Color(0xFFFCFCFD);
  static const Color primaryBlue = Color(0xFF0074E0);
/*Orange Color Variants (This color should be used for buttons and CTAs.)*/
  static const Color orange = Color(0xFFFF7A40);
/*Dark color variants (This color should be used for text)*/
  static const Color primaryDark = Color(0xFF071048);
  static const Color secondaryDark = Color(0xFF3A406C);
  static final Color errorColor= Colors.redAccent;
  static final Color successColor= Colors.green;



}
