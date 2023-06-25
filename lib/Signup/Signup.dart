import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  void dispose() {
    phoneNumberController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      //appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: mediaQuery.size.height*0.2),
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
            SizedBox(height: mediaQuery.size.height*0.05),
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
                      color: Colors.white,
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
                      color: Colors.white,
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
            ElevatedButton(
              onPressed: () {
                // Implement the logic to connect Metamask here
              },
              child: Text(
                'Connect your Metamask',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 82, 255, 175),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(mediaQuery.size.width * 0.05),
              ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height*0.2),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Create',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 82, 255, 175),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}