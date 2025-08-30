import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/ticketView/dashed_line.dart';

class FlightPath extends StatelessWidget {
  final double totalWidth;

  const FlightPath({super.key, required this.totalWidth});

  @override
  Widget build(BuildContext context) {
    final dashWidth = 6.0;
    final dashCount = (totalWidth / (dashWidth + 2)).floor();

    return Stack(
      alignment: Alignment.center,
      children: [
        DashedLine(width: totalWidth, dashCount: dashCount),
        Icon(FluentSystemIcons.ic_fluent_airplane_filled, 
          color: Colors.white, size: 20
        ),
      ],
    );
  }
}
