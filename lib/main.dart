import 'package:flutter/material.dart';
import 'Login/loginpage.dart';

void main() {
  runApp(const FlowPay());
}

class FlowPay extends StatelessWidget {
  const FlowPay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
      builder: (context) => MediaQuery(
        data: MediaQuery.of(context).copyWith(),
        child: SignupPage(),
      ),
    ),
    );
  }
}

