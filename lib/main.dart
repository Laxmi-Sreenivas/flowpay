import 'package:flowpay/Landingpage/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlowPay());
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

