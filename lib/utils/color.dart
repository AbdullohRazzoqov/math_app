import 'package:flutter/material.dart';

class MyColors {
  static const Color black = Color(0xFF000000);
  static const Color bacroundColor = Color(0xFF212121);
  static const Color test = Color(0xFF242424);
}

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xffF86142,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFE6F6E1),
      100: Color(0xFFC1E8B5),
      200: Color(0xFF97D984),
      300: Color(0xFF6DC953),
      400: Color(0xFF4EBE2E),
      500: Color(0xFF2FB209),
      600: Color(0xFF2AAB08),
      700: Color(0xFF23A206),
      800: Color(0xFF1D9905),
      900: Color(0xFF128A02),
    },
  );
}
