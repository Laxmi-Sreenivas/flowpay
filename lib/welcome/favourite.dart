import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  final IconData icon;
  final String username;

  const Favourite({Key? key, required this.icon, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    double w = mediaQuery.size.width;
    return Column(
      children: [
        Container(
          width: w * 0.16,
          height: w * 0.16,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(
              icon,
              size:  w * 0.16* 0.7,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          username,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

