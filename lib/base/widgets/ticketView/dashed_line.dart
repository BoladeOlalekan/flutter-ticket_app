import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final double width;
  final int dashCount;
  final Color color;

  const DashedLine({super.key, required this.width, required this.dashCount, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(dashCount, (index) {
          return Container(
            width: 3,
            height: 1,
            color: color,
          );
        }),
      ),
    );
  }
}
