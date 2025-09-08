import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color iconColor1 = const Color(0xffbfc205);
  static Color borderColor = const Color(0xfff4f6fd);
  static Color backgroundColor = const Color(0xffeeedf2);
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketOrange = const Color(0xfff37b67);
  static Color borderWhite = const Color(0xffffffff);
  static Color iconColor2 = const Color(0xffbfc2df);
  static Color buttonColor = const Color(0xd91130ce);
  static Color borderColor2 = const Color(0xff3ab8b8);
  static Color borderColor3 = const Color(0xffec6545);
  static Color circleColor = const Color(0xff189999);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500
  );

  static TextStyle header1  = TextStyle(
    color: textColor,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static TextStyle header2  = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static TextStyle header3  = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: borderWhite
  );

  static TextStyle textStyle2  = TextStyle(
    fontSize: 14,
    color: textColor,
    fontWeight: FontWeight.w500
  );

  static TextStyle textStyle3  = TextStyle(
    fontSize: 20,
    color: borderColor,
    fontWeight: FontWeight.w500
  );

  static TextStyle doubleText1  = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: textColor
  );

  static TextStyle doubleText2  = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500
  );
}