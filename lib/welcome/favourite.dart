import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  final double size;
  final IconData icon;

  const Favourite({Key? key, required this.size, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(
          icon,
          size: size * 0.7,
          color: Colors.white,
        ),
      ),
    );
  }
}
