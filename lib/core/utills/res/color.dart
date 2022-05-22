import 'package:flutter/material.dart';

class ColorRes {
  ColorRes._init();

  static const int _primaryColorValue = 0xFFec018f;
  static const MaterialColor primaryMaterialColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(0xFFFDE1F2),
      100: Color(0xFFF9B3DD),
      200: Color(0xFFF680C7),
      300: Color(0xFFF24DB1),
      400: Color(0xFFEF27A0),
      500: Color(_primaryColorValue),
      600: Color(0xFFEA0187),
      700: Color(0xFFE7017C),
      800: Color(0xFFE40172),
      900: Color(0xFFDF0060),
    },
  );

  // static const Color backgroundColor = Color(0xFFF3F8FE);
  static const Color backgroundColor = Color(0xFFE8F0F0);
  static const Color shadowColor = Color.fromARGB(255, 190, 209, 209);
  static const Color textColor = primaryMaterialColor;
  // static const Color textColor = Color(0xFF003663);
}
