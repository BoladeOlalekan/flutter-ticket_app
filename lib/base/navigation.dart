import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_app/pages/home.dart';
import 'package:ticket_app/pages/search.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final appScreens = [
    //Home screen
    const HomePage(),
    //Search screen
    const SearchPage(),
    //Tickets screen
    const Center(child: Text("Tickets")),
    //Profile screen
    const Center(child: Text("Profile")),
  ];
  
  //change index of nav bar
  int _selectedIndex = 0;

  void _onItemClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: appScreens[_selectedIndex],

      //footer
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemClicked,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.blueGrey[600],
        iconSize: 30,
      
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home"
          ),
      
          //search
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search"
          ),
      
          //ticket
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Tickets"
          ),
      
          //profile
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Profile"
          ),
        ],
      ),
    );
  }
}
