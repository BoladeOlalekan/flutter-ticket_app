import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/navigation.dart';
import 'package:ticket_app/pages/all_hotels.dart';
import 'package:ticket_app/pages/all_tickets.dart';
import 'package:ticket_app/pages/hotel_details.dart';
import 'package:ticket_app/pages/tickets/tickets_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
  SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // make status bar see-through
    statusBarIconBrightness: Brightness.light, // for light or dark icons
  ),
);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
      routes: {
        AppRoutes.allTickets: (context) => const AllTickets(),      
        AppRoutes.ticketScreen: (context) => const TicketsScreen(),      
        AppRoutes.allHotels: (context) => const AllHotels(),      
        AppRoutes.hotelDetails: (context) => const HotelDetails(),      
      },
    );
  }
}
