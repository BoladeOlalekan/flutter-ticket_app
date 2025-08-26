import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);

  static TextStyle header1  = TextStyle(
    color: textColor,
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );

  static TextStyle header2  = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}