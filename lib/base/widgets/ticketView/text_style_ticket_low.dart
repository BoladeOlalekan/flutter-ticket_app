import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleTicketLow extends StatelessWidget {

  final String text;
  final TextAlign textAlign;

  const TextStyleTicketLow({super.key, required this.text, required this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle2.copyWith(color: Colors.white),
      textAlign: textAlign,
    );
  }
}