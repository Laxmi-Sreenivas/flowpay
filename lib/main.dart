import 'package:flowpay/Landingpage/landingpage.dart';
import 'package:flutter/material.dart';

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
        child: LandingPage(),
      ),
    ),
    );
  }
}

