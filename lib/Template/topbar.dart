import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final double size;
  const TopBar({super.key,required this.size});

  @override
  Widget build(BuildContext context) {

    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 4, 192, 123),
      title: Text(
        "FlowPay",
        style: TextStyle(
          color: Colors.white,
          fontSize: size/2,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size);
}
