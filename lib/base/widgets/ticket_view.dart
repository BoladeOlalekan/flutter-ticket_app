import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/plane.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width+0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21)
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "NYC",
                  style: AppStyles.textStyle.copyWith(color: Colors.white),
                ),

                Expanded(child: Container()),

                PlaneDot(),
                
                Expanded(child: Container()),

                PlaneDot(),

                Expanded(child: Container()),

                Text(
                  "NYC",
                  style: AppStyles.textStyle.copyWith(color: Colors.white),
                )
              ],
            ),

            Row(
              children: [
                Text(
                  "Hello"
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}