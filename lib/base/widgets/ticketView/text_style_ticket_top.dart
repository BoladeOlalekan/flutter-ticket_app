import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleTicket extends StatelessWidget {

  final String text;
  final TextAlign textAlign;

  const TextStyleTicket({super.key, required this.text, required this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle.copyWith(color: Colors.white),
      textAlign: textAlign,                        
    );
  }
}