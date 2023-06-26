import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
            Text(
              'To the Secure payments platform',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: mediaQuery.size.height*0.05),
            SvgPicture.asset(
              'assets/flow_logo.svg', // Replace with your SVG file path
              width: mediaQuery.size.width * 0.5, // Adjust the width as needed
              height: mediaQuery.size.height * 0.2, // Adjust the height as needed
            ),
            Container(
                width: mediaQuery.size.width * 0.8, 
                height: mediaQuery.size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle sign-up button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(mediaQuery.size.height * 0.03),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

            SizedBox(height: mediaQuery.size.height*0.02),
           Container(
                width: mediaQuery.size.width * 0.8, 
                height: mediaQuery.size.height * 0.06,
                child: OutlinedButton(
                  onPressed: () {
                    // Handle login button press
                  },
                  style: OutlinedButton.styleFrom(
                    
                    side: BorderSide(color: Colors.green),
                    backgroundColor: Colors.green,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(mediaQuery.size.height * 0.03),
                    ),
                  ),
                  child: Text('Login',style: TextStyle(fontSize: 20),),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
