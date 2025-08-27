import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      //main body
      body: ListView(
        children: [
          SizedBox(height: 30),
          //GREET AND BOOK
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                //GREETING 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.header2,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Book Tickets",
                          style: AppStyles.header1,
                        ),
                      ],
                    ),
                    //IMAGE
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo)
                        )
                      ),
                    )
                  ]
                ),

                SizedBox(height: 25),

                //SEARCH CONTAINER
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppStyles.borderColor
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: AppStyles.iconColor1,
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
            
                Row(
                  children: [
                    const Column(
                      children: [
            
                      ],
                    )
                  ]
                )
              ],
            ),
          ),
          
          SizedBox(height: 30),

          //TICKET VIEW
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //semi-heading
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                ),

                SizedBox(height: 16),

                //Ticket View scroll
                TicketView(),
              ],
            )
          ),
        ]
      ),
    );
  }
}
