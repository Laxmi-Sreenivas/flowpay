import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  final double size;
  final IconData icon;
  final String username;

  const Favourite({Key? key, required this.size, required this.icon, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
        ),
        Text(
          username,
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

