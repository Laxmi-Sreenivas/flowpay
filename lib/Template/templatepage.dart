import 'dart:collection';

import 'package:flowpay/Payments/paymentspage.dart';
import 'package:flowpay/Split/splitscreen.dart';
import 'package:flowpay/Split/splitscreen.dart';
import 'package:flowpay/Template/navbar.dart';
import 'package:flowpay/Template/topbar.dart';
import 'package:flowpay/Transactions/transactionpage.dart';
import 'package:flowpay/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flowpay/services/services.dart';

class PageTemplate extends StatefulWidget {
  final Services services;
  const PageTemplate({super.key, required this.services});
  @override
  State<PageTemplate> createState() => _PageTemplateState();
}

class _PageTemplateState extends State<PageTemplate> {
  int pageIndex = 0;

  void moveToIndex(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List pages = [
      Welcome(services: widget.services),
      PaymentsPage(),
      TransacationPage(),
      SplitScreen()
    ];

    double appBarSize = MediaQuery.of(context).size.height * 0.08;
    double navBarSize = MediaQuery.of(context).size.height * 0.04;

    return Scaffold(
      backgroundColor: Colors.black,
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
