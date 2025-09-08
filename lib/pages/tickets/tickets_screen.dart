import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/all_json.dart';
import 'package:ticket_app/base/widgets/ticketView/ticket_view.dart';
import 'package:ticket_app/pages/search/search_widgets/app_ticket_tabs.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          SizedBox(height: 40,),
          Text(
            "Tickets",
            style: AppStyles.header1.copyWith(fontSize: 35),
          ),
          SizedBox(height: 20,),
          AppTicketTabs(
            leftText: "Upcoming",
            rightText: "Previous",
          ),

          SizedBox(height: 20,),

          Container(
            padding: EdgeInsets.only(left: 20),
            child: TicketView(
              ticket: ticketList[0],
              topColor: Colors.white,
              bottomColor: Colors.white,
              textColor: Colors.black87,
              dotColor: AppStyles.dotColor,
              planeColor: AppStyles.planeColor,
              pathColor: AppStyles.pathColor,
            ),

          ),
        ],
      ),
    );
  }
}
