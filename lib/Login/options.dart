import 'dart:developer';

import 'package:flowpay/Signup/Signup.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final Function loginbutton;

  const Options({super.key, required this.loginbutton});

  void tosignup(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => SignupPage()),
        (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height; 
  
    double topMargin = 0.06 * h;
    double topPad = 0.015 * h;
    double sidePad = 0.3 * w;
    double bigFont = 0.05 * w;
    double smallFont = bigFont / 1.6;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: topMargin),
          child: ElevatedButton(
            onPressed: () => loginbutton(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(
                vertical: topPad,
                horizontal: sidePad,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(bigFont)),
            ),
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontSize: bigFont,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0,topMargin/2,0,topMargin/200),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Don't have an account?",
              style: TextStyle(
                fontSize: smallFont,
                color: Colors.white,
              ),
            ),
            TextButton(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: smallFont,
                  color: Colors.green,
                ),
              ),
              onPressed: () => tosignup(context),
            )
          ]),
        )
      ],
    );
  }
}
