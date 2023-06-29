import 'package:flowpay/Transactions/balancecard.dart';
import 'package:flowpay/Transactions/historytile.dart';
import 'package:flutter/material.dart';

class TransacationPage extends StatelessWidget {
  const TransacationPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Get The Amount From BackEnd
    //Get The Previous Transactions form BackEnd
    List<HistoryTile> history = List.filled(
        6,
        const HistoryTile(
          sender: "Chandrika",
          time: "March 1, 2023 at 17:40 PM",
          amount: 143,
        ));

    return SingleChildScrollView(
      child: Column(
        children: [BalanceCard(amount: 69696), ...history],
      ),
    );
  }
}
