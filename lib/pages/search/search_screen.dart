import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/pages/search/search_widgets/app_text_icons.dart';
import 'package:ticket_app/pages/search/search_widgets/app_ticket_tabs.dart';
import 'package:ticket_app/pages/search/search_widgets/find_button.dart';
import 'package:ticket_app/pages/search/search_widgets/ticket_promotion.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          SizedBox(height: 40,),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.header1.copyWith(fontSize: 35),
          ),
          SizedBox(height: 20,),
          AppTicketTabs(
            leftText: "Airline Tickets",
            rightText: "Hotels",
          ),

          SizedBox(height: 30,),

          //Search departure and arrival tickets
          AppTextIcons(
            iconText: "Departure",
            icon: Icons.flight_takeoff_rounded,
          ),

          SizedBox(height: 15,),

          AppTextIcons(
            iconText: "Arrival",
            icon: Icons.flight_land_rounded,
          ),

          SizedBox(height: 20,),

          //Find ticket button
          FindButton(
            text: "Find tickets",
          ),

          SizedBox(height: 30,),

          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View all",
            func: (){},
          ),

          SizedBox(height: 15,),

          TicketPromotion(),
        ],
      )
    );
  }
}