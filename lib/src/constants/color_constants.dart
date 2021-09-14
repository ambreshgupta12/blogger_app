import 'package:flutter/material.dart';

// You can also just let this float around in the file without encapsulating
// in a class. Then you'll have to make sure that system wide you don't have
// duplicate variable names.
class KColors {
  static const Color black = Colors.black;
  static const Color lightWhite = Color(0xffF7F7F7);
  static const Color deepOrange = Colors.deepOrange;
  static  Color deepOrangeShade100 = Colors.deepOrange.shade100;
  static  Color white = Colors.white;

  static const Color whiteFCD = Color(0xFFFCFCFD);
  static const Color backGroundColor = Color(0xFFE5E5E5);

  /*white color variants*/
  static const Color primaryWhite = Color(0xFFFFFFFF);
  Color secondaryWhite = Color(0xFFFFFFFF).withOpacity(0.70);
  static Color disabledWhite = Color(0xFFFFFFFF).withOpacity(0.50);
  static const Color whiteLilacColor = Color(0xFFF5F6FC);

  static const Color primaryBlue = Color(0xFF0074E0);
/*Orange Color Variants (This color should be used for buttons and CTAs.)*/
  static const Color orange = Color(0xFFFF7A40);
/*Dark color variants (This color should be used for text)*/
  static const Color primaryDark = Color(0xFF071048);
  static const Color secondaryDark = Color(0xFF3A406C);
  static final Color errorColor= Colors.redAccent;
  static final Color successColor= Colors.green;

  static const Color amberColor = Color(0xFFFFAD0D);
  static const Color chipBgColor = Color(0xFFFAFAFA);
  static const Color manateeColor = Color(0xFF86879C);
  static const Color mischkaColor = Color(0xFFD1D4DB);
  static const Color osloGrayColor = Color(0xFF878A91);
  static const Color mountainMeadowColor = Color(0xFF149F7E);

  static const Color searchBarColor = Color(0xFFEFF0F6);
  static const Color blackSqueeze = Color(0xFFF5F9FC);
  static const Color loganColor = Color(0xFFADB0CE);
  static const Color searchIconColor = Color(0xFF6E7191);
  static const Color inputFieldBgColor = Color(0xFFEFF0F6);
  static const Color inputFieldActiveColor = Color(0xFF14142B);
  static const Color hintColor = Color(0xFFA0A3BD);
  static const Color navigationIconColor = Color(0xFFB0B3C7);
  static const Color silverColor = Color(0xFFAFAEBB);
  static const Color tundoraColor = Color(0xFF424242);
  static const Color mysticColor = Color(0xFFE7EBF1);



}
