import 'package:flutter/material.dart';

class PlaneDot extends StatelessWidget {
  final Color color;
  const PlaneDot({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5,
          color: color,
        ),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}