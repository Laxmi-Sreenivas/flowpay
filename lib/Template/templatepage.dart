import 'package:flowpay/Template/navbar.dart';
import 'package:flowpay/Template/topbar.dart';
import 'package:flowpay/Transactions/transactionpage.dart';
import 'package:flutter/material.dart';

class PageTemplate extends StatefulWidget {
  const PageTemplate({super.key});

  @override
  State<PageTemplate> createState() => _PageTemplateState();
}

class _PageTemplateState extends State<PageTemplate> {
  int pageIndex = 0;
  List pages = [ //To Be Replaced By Actual Pages
    Container(color: Colors.white),
    Container(color: Colors.yellow),
    TransacationPage(),
    Container(color: Colors.red)
  ];

  void moveToIndex(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double appBarSize = MediaQuery.of(context).size.height * 0.08;
    double navBarSize = MediaQuery.of(context).size.height * 0.04;

    return Scaffold(
      backgroundColor:Colors.black,
      appBar: TopBar(
        size: appBarSize,
      ),
      body: pages.elementAt(pageIndex),
      bottomNavigationBar: NavBar(
        size: navBarSize,
        navIndex: pageIndex,
        update: moveToIndex,
      ),
    );
  }
}
