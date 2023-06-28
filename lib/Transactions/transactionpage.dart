import 'package:flowpay/Transactions/balancecard.dart';
import 'package:flowpay/Transactions/history.dart';
import 'package:flutter/material.dart';

class TransacationPage extends StatelessWidget {
  const TransacationPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Get The Amount From BackEnd
    //Get The Previous Transactions form BackEnd

    return const Column(
      children: [
        BalanceCard(amount: 69696),
        History(),
      ],
    );
  }
}
