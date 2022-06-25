import 'package:flutter/material.dart';

class CustomColor {
  /*
  static Map<int, Color> preto =
  {
    50: Color.fromRGBO(0, 0, 0, 0.1),
    100: Color.fromRGBO(0, 0, 0, .2),
    200: Color.fromRGBO(0, 0, 0, .3),
    300: Color.fromRGBO(0, 0, 0, .4),
    400: Color.fromRGBO(0, 0, 0, .5),
    500: Color.fromRGBO(0, 0, 0, .6),
    600: Color.fromRGBO(0, 0, 0, .7),
    700: Color.fromRGBO(0, 0, 0, .8),
    800: Color.fromRGBO(0, 0, 0, .9),
    900: Color.fromRGBO(10, 0, 0, 1),
  };
   */

  static Map<int, Color> preto = const {
    50: Color(0x1A000000),
    100: Color(0x33000000),
    200: Color(0x4D000000),
    300: Color(0x66000000),
    400: Color(0x80000000),
    500: Color(0x99000000),
    600: Color(0xB3000000),
    700: Color(0xCC000000),
    800: Color(0xE6000000),
    900: Color(0xFF000000),
  };

  static MaterialColor materialPreto = MaterialColor(0xFF000000, preto);
}
