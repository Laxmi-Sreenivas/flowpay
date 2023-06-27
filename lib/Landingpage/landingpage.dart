import 'package:flutter/material.dart';
import 'package:flowpay/Signup/signup.dart';
import 'package:flowpay/Login/loginpage.dart';

class LandingPage extends StatelessWidget {

  void toSignup(BuildContext context){
        Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => SignupPage()),
        (Route<dynamic> route) => false);
  }

    void toLogin(BuildContext context){
        Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
        (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    double w = mediaQuery.size.width;
    double h = mediaQuery.size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FlowPay',
              style: TextStyle(
                fontSize: w*0.1,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            SizedBox(height: mediaQuery.size.height * 0.01),
            Text(
              'The Secure payments platform',
              style: TextStyle(
                fontSize: w*0.04,
                color: Colors.white,
              ),
            ),
            SizedBox(height: mediaQuery.size.height * 0.05),
            Container(
              margin: EdgeInsets.fromLTRB(0.01*w,h*0.01,0.01*w,h*0.06),
              child: Image.asset(
                "lib/Assets/flow_logo.png", // Replace with your SVG file path
                width:
                    mediaQuery.size.width * 0.5, // Adjust the width as needed
                height:
                    mediaQuery.size.height * 0.3, // Adjust the height as needed
              ),
            ),
            Container(
              width: mediaQuery.size.width * 0.8,
              height: mediaQuery.size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  toSignup(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius:
                        BorderRadius.circular(mediaQuery.size.height * 0.03),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize:  w*0.055,
                  ),
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * 0.04),
            Container(
              width: mediaQuery.size.width * 0.8,
              height: mediaQuery.size.height * 0.07,
              child: OutlinedButton(
                onPressed: () {
                  toLogin(context);
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.green),
                  backgroundColor: Colors.green,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(mediaQuery.size.height * 0.03),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: w*0.055),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
