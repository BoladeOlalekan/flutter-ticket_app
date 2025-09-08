import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTextIcons extends StatelessWidget {
  const AppTextIcons({super.key, required this.iconText, required this.icon});
  final String iconText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.borderWhite
      ),

      child: Row(
        children: [
          Icon(
            icon,
            color: AppStyles.iconColor2,
          ),
          SizedBox(width: 10),
          Text(
            iconText,
            style: AppStyles.header2
          ),
        ],
      ),
    );
  }
}