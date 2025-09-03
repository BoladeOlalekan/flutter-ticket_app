import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/all_json.dart';
import 'package:ticket_app/base/widgets/ticketView/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      appBar: AppBar(
        title: Text ("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.map((singleTicket) => 
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TicketView(ticket: singleTicket, wholeScreen: true,))
              ).toList(),
            )
          )
        ],
      ),
    );
  }
}