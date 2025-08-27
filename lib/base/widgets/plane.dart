import 'package:flutter/material.dart';

class PlaneDot extends StatelessWidget {
  const PlaneDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5,
          color: Colors.white
        ),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}