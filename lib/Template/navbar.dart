import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final double size;
  final Function update;
  final int navIndex;
  const NavBar({super.key, required this.size,required this.navIndex,required this.update});

  @override
  Widget build(BuildContext context) {
    const Color color = Color.fromARGB(255, 4, 192, 123);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: color,
      selectedItemColor: Colors.black,
      currentIndex: navIndex,
      onTap: (index) => update(index),
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2, size: size), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.money_rounded, size: size), label: "Payments"),
        BottomNavigationBarItem(
            icon: Icon(Icons.history_rounded, size: size), label: "Bills"),
        BottomNavigationBarItem(
            icon: Icon(Icons.group_rounded, size: size), label: "Split"),
      ],
    );
  }
}
