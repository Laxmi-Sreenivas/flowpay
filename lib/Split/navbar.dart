import 'package:flowpay/Split/splitscreen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int selIndex = 0;

  static final List<Widget> widgetOptions = <Widget>[
    SplitScreen(),
    const Text("Transactions"),
    const Text("History")
  ];

  void onItemTapped(int index){
    setState(() {
      selIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child : widgetOptions[selIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_document_page_break_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_document_page_break_filled),
              label: "Split"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_history_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_history_filled),
              label: "Transactions"),
      ],),
    );
  }
}
