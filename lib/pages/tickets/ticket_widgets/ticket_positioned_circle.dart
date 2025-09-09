import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  final bool position;
  const TicketPositionedCircle({super.key, required this.position,});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: position == true ? 30 : null,
      right: position == true ? null : 30,
      top: 420,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: AppStyles.borderColor,
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: AppStyles.textColor
          ),
        ),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyles.textColor,
        ),
      ),
    );
  }
}