import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleTicket extends StatelessWidget {

  final String text;
  final TextAlign textAlign;
  final Color color;

  const TextStyleTicket({super.key, required this.text, required this.textAlign, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle.copyWith(color: color),
      textAlign: textAlign,                        
    );
  }
}