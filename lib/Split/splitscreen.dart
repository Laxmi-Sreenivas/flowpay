import 'package:flowpay/Split/groupcard.dart';
import 'package:flutter/material.dart';
import 'package:flowpay/Split/styles/app_styles.dart';

class SplitScreen extends StatelessWidget {
  SplitScreen({Key? key}) : super(key: key);

  List<Map<String, String>> groupList = [
  {
    'groupName': 'Group Name',
    'numberOfMembers': '5',
    'totalBill': '100',
    'yourBill': '20',
    'group_ID': '1',
  },
  {
    'groupName': 'Group Name',
    'numberOfMembers': '5',
    'totalBill': '100',
    'yourBill': '20',
    'group_ID': '2',
  },
  {
    'groupName': 'Group Name',
    'numberOfMembers': '5',
    'totalBill': '100',
    'yourBill': '20',
    'group_ID': '3',
  },
  {
    'groupName': 'Group Name',
    'numberOfMembers': '5',
    'totalBill': '100',
    'yourBill': '20',
    'group_ID': '4',
  },
];


  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    double w = mediaQuery.size.width;
    double h = mediaQuery.size.height;

    

    return ListView(
      children: [
        SizedBox(height: h * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: w * 0.08),
            Text(
              "Your Groups",
              style: Styles.mainHeadStyle.copyWith(color: Colors.white),
            ),
            SizedBox(width: w * 0.23),
            IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: w * 0.03),
          child: Row(
            children: groupList.map((group) {
              //print(group['group_ID']);
              return GroupCard(
                groupName: group['groupName'] ?? 'N/A',
                numberOfMembers: group['numberOfMembers'] ?? 'N/A',
                totalBill: group['totalBill'] ?? 'N/A',
                yourBill: group['yourBill'] ?? 'N/A',
                group_ID: group['group_ID'] ?? '1',
              );
              
            }).toList(),
          ),
        ),
      ],
    );
  }
}
