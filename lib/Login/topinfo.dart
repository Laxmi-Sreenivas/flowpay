import 'package:flutter/material.dart';

class TopInfo extends StatelessWidget {
  const TopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    double bottomMargin = MediaQuery.of(context).size.height*0.02;
    double fontVal = MediaQuery.of(context).size.width*0.025;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottomMargin),
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: fontVal*3,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: bottomMargin),
          child: Text(
            "Login to your Account",
            style: TextStyle(
              fontSize: 1.5*fontVal,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
