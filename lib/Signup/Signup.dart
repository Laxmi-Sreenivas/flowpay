import 'package:flowpay/Signup/profilepic.dart';
import 'package:flowpay/Template/templatepage.dart';
import 'package:flutter/material.dart';
import 'package:flowpay/Login/loginpage.dart';
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void toLogin(BuildContext context){
        Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
        (Route<dynamic> route) => false);
  }

  void toWelcome(BuildContext context){
        Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => PageTemplate()),
        (Route<dynamic> route) => false);
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      //appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: mediaQuery.size.height*0.1),
                Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: mediaQuery.size.width * 0.07,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Create an account, it\'s free',
                  style: TextStyle(
                    fontSize: mediaQuery.size.width * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.size.height*0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(mediaQuery.size.width*0.05, 0, mediaQuery.size.width*0.05, 0),
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: mediaQuery.size.height*0.08,
                  padding: EdgeInsets.fromLTRB(mediaQuery.size.width*0.05, mediaQuery.size.width*0.02, mediaQuery.size.width*0.05, 0),
                  child: TextField(
                    controller: phoneNumberController,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          width: mediaQuery.size.width * 0.01,
                          color: Colors.green,
                          style: BorderStyle.solid,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '**********',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.size.height*0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(mediaQuery.size.width*0.05, 0, mediaQuery.size.width*0.05, 0),
                child: Text(
                  'Username',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
                ),
                
                Container(
                  padding: EdgeInsets.fromLTRB(mediaQuery.size.width*0.05, mediaQuery.size.width*0.02, mediaQuery.size.width*0.05, 0),
                  height: mediaQuery.size.height*0.08,
                  child: TextField(
                    controller: usernameController,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          width: mediaQuery.size.width * 0.01,
                          color: Colors.green,
                          style: BorderStyle.solid,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'username',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.size.height*0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    mediaQuery.size.width * 0.05,
                    0,
                    mediaQuery.size.width * 0.05,
                    0,
                  ),
                  child: Text(
                    'Email id',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: mediaQuery.size.height * 0.08,
                  padding: EdgeInsets.fromLTRB(
                    mediaQuery.size.width * 0.05,
                    mediaQuery.size.width * 0.02,
                    mediaQuery.size.width * 0.05,
                    0,
                  ),
                  child: TextField(
                    controller: emailController,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          width: mediaQuery.size.width * 0.01,
                          color: Colors.green,
                          style: BorderStyle.solid,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '**********',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    obscureText: true, // For password fields, to hide the entered text
                  ),
                ),
                  
              ],
            ),
            SizedBox(height: mediaQuery.size.height*0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    mediaQuery.size.width * 0.05,
                    0,
                    mediaQuery.size.width * 0.05,
                    0,
                  ),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: mediaQuery.size.height * 0.08,
                  padding: EdgeInsets.fromLTRB(
                    mediaQuery.size.width * 0.05,
                    mediaQuery.size.width * 0.02,
                    mediaQuery.size.width * 0.05,
                    0,
                  ),
                  child: TextField(
                    controller: passwordController,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          width: mediaQuery.size.width * 0.01,
                          color: Colors.green,
                          style: BorderStyle.solid,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '**********',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    obscureText: true, // For password fields, to hide the entered text
                  ),
                ),
                  
              ],
            ),
            SizedBox(height: mediaQuery.size.height*0.02),
            Profilepic(),
            SizedBox(height: mediaQuery.size.height*0.05),
            ElevatedButton(
              onPressed: () {
                toWelcome(context);
              },
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Connect ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: 'your Metamask',
                      
                    ),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(mediaQuery.size.width * 0.05),
                ),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      toLogin(context);
                    },
                    child: Text(
                      'login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
      ),
    );
  }
}