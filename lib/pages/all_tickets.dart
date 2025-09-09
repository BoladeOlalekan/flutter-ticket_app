import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
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
        backgroundColor: AppStyles.backgroundColor,
        title: Text (
          "All Tickets",
          style: AppStyles.header1.copyWith(fontSize: 25),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.map((singleTicket) => 
              GestureDetector(
                onTap: (){
                  var index = ticketList.indexOf(singleTicket);

                  Navigator.pushNamed(
                    context, 
                    AppRoutes.ticketScreen,
                    arguments: {
                      'index': index
                    }
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TicketView(ticket: singleTicket, wholeScreen: true,)),
              )
              ).toList(),
            )
          )
        ],
      ),
    );
  }
}