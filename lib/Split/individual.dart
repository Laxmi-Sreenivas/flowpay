import 'package:flowpay/Split/styles/app_styles.dart';
import 'package:flowpay/Split/widget/avatar.dart';
import 'package:flutter/cupertino.dart';

import 'package:flowpay/Split/styles/app_layout.dart';

class IndCard extends StatelessWidget {
  const IndCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 80,
      child: Container(
        color: const Color(0xFFF0F8FF),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: UserAvatar(filename: "trump.jpeg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Donald Trump",
                      style: Styles.headLineStyle2,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "+####",
                      style: Styles.headLineStyle3,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
