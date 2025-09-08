import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindButton extends StatelessWidget {
  const FindButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.buttonColor,
      ),
      child: Center(
        child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppStyles.header3,
        ),
      ),
    );
  }
}