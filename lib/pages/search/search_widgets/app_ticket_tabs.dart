import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xfff4f6fd)
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              color: Colors.amber
            ),
            child: Center(
              child: Text(
                "Airline Tickets"
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            child: Center(
              child: Text(
                "Hotels"
              ),
            ),
          )
        ],
      ),
    );
  }
}