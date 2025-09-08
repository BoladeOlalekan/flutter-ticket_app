import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(2),
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
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(50)
              ),
              color: AppStyles.borderWhite
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(50)
              ),
              color: Colors.transparent
            ),
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