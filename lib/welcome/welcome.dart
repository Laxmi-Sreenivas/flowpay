import 'package:flowpay/welcome/favourite.dart';
import 'package:flutter/material.dart';
import 'package:flowpay/welcome/profilecard.dart';
import 'package:flowpay/services/services.dart';

class Welcome extends StatelessWidget {
  final Services services;
  const Welcome({super.key, required this.services});
  
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    double w = mediaQuery.size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: w * 0.04),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'lib/Assets/welcome.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: w * 0.04),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: w * 0.03),
              ProfileCard(),
              SizedBox(width: w * 0.03),
            ],
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(w * 0.05, w * 0.03, w * 0.05, w * 0.03),
            child: Text(
              'Favourites',
              style: TextStyle(
                color: Colors.green,
                fontSize: w * 0.07,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: w * 0.01),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(4, (rowIndex) {
                  return Column(
                    children: List.generate(3, (colIndex) {
                      //final index = rowIndex * 3 + colIndex;
                      return Padding(
                        padding: EdgeInsets.fromLTRB(
                            w * 0.04, w * 0.02, w * 0.04, w * 0.02),
                        child: Favourite(
                          icon: Icons.person,
                          username: 'Chandrika',
                        ),
                      );
                    }),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
