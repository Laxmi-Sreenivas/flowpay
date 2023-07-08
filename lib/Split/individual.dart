import 'package:flutter/material.dart';

class IndCardWidget extends StatelessWidget {
  final String profilePhotoUrl;
  final String username;
  final String amount;

  const IndCardWidget({
    super.key,
    required this.profilePhotoUrl,
    required this.username,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h*0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, // Center the content horizontally
        children: [
          SizedBox(width: w*0.03),
          CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(profilePhotoUrl),
            radius: w * 0.07,
          ),
          SizedBox(width: w*0.03),
          Text(
            username,
            style: TextStyle(
              color: Colors.white,
              fontSize: w*0.06,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: w*0.4),
          Text(
            amount,
            style: TextStyle(
              color: amount.startsWith('+') ? Colors.green : Colors.red,
              fontSize: w * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}
