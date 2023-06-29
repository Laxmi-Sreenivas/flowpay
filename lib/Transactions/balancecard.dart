import 'package:flutter/material.dart';
import 'dart:math';

class BalanceCard extends StatelessWidget {
  final double amount;
  const BalanceCard({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        vertical: min(w, h) * 0.08,
        horizontal: min(w, h) * 0.05,
      ),
      padding: EdgeInsets.all(min(w, h) * 0.03),
      color: const Color.fromARGB(255, 4, 192, 123),//Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Available Balance:",
            style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.w600),
          ),
          SizedBox(width: w * 0.02),
          Image.asset("lib/Assets/flow_logo.png", height: w * 0.08),
          SizedBox(width: w * 0.01),
          Text(
            amount.toString(),
            style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
