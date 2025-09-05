import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/pages/search/search_widgets/app_ticket_tabs.dart';

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
          AppTicketTabs()
        ],
      )
    );
  }
}