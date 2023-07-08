import 'package:flowpay/Split/groupcard.dart';
import 'package:flowpay/Split/individual.dart';
// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:flowpay/Split/styles/app_styles.dart';
// import 'package:flowpay/Split/styles/app_layout.dart';

class SplitScreen extends StatelessWidget {
  const SplitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: const Color(0xFFF0F8FF),
            child: Column(
              children: [
                const Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Groups",
                      style: Styles.mainHeadStyle,
                    ),
                    Container(
                        child: Row(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'assets/images/pencil.png',
                            width: 36,
                            height: 36,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/img.png',
                            width: 36,
                            height: 36,
                          ),
                        ),
                      ],
                    ))
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                GroupCard(),
                GroupCard(),
                GroupCard(),
                GroupCard(),
              ],
            ),
          ),
          const Gap(20),
          Container(
            color: const Color(0xFFF0F8FF),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Individual Transactions",
                      style: Styles.mainHeadStyle2,
                    ),
                    Container(
                        child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/img.png',
                            width: 36,
                            height: 36,
                          ),
                        ),
                      ],
                    ))
                  ],
                )
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                IndCard(),
                IndCard(),
                IndCard(),
                IndCard(),
                IndCard(),
                IndCard(),
                IndCard(),
                IndCard(),
                IndCard(),
              ],
            ),
          )
        ],
      ) ;
  }
}
