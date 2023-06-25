import 'package:flowpay/Login/options.dart';
import 'package:flowpay/Login/textbox.dart';
import 'package:flowpay/Login/topinfo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final mobileField = TextEditingController();
  final passwdField = TextEditingController();

  @override
  void dispose() {
    mobileField.dispose();
    passwdField.dispose();
    super.dispose();
  }

  void login() {
    String mobileNo = mobileField.text;
    String passwd = passwdField.text;

    //To Be Commented
    print(mobileNo);
    print(passwd);
  }

  @override
  Widget build(BuildContext context) {
    double topPad = MediaQuery.of(context).size.height;
    double sidePad = MediaQuery.of(context).size.width * 0.05;

    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.fromLTRB(sidePad, topPad /8, sidePad,0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TopInfo(),
                  TextBox(phoneNo: mobileField, passwd: passwdField),
                  Options(loginbutton: login),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
