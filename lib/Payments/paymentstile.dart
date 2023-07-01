import 'package:flutter/material.dart';

class PaymentsTile extends StatelessWidget {
  final String profilePhotoUrl;
  final String username;
  final String phoneNumber;

  const PaymentsTile({
    Key? key,
    required this.profilePhotoUrl,
    required this.username,
    required this.phoneNumber,
  }) : super(key: key);

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
            backgroundImage: NetworkImage(profilePhotoUrl),
            radius: w * 0.07,
          ),
          SizedBox(width: w * 0.05),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w * 0.05,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: h * 0.01),
              Text(
                phoneNumber,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w * 0.03,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
