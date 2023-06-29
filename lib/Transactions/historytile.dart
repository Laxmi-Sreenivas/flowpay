import 'package:flutter/material.dart';

class HistoryTile extends StatelessWidget {
  final String sender;
  final String time;
  final double amount;
  const HistoryTile({super.key,required this.sender,required this.time,required this.amount});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: h * 0.03),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            // backgroundImage: NetworkImage(""),
            radius: w * 0.07,
          ),
          SizedBox(width: w * 0.05),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sender,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w * 0.05,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: h * 0.01),
              Text(
                time,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w * 0.03,
                ),
              ),
            ],
          ),
          const Spacer(flex: 1),
          Text(
            (amount > 0)?("+ "):("- "),
            style: TextStyle(
              color: Colors.white,
              fontSize: w * 0.06,
              fontWeight: FontWeight.w600,
            ),
          ),
          Image.asset("lib/Assets/flow_logo.png", height: 30),
          SizedBox(width: w * 0.02),
          Text(
            amount.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: w * 0.04,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
