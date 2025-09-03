import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ticket_app/base/navigation.dart';
import 'package:ticket_app/pages/all_tickets.dart';

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
      home: BottomNavBar(),
      routes: {
        "all_tickets": (context) => AllTickets()
      },
    );
  }
}
