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
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    double w = mediaQuery.size.width;
    double h = mediaQuery.size.height;
    return ListView(
        children: [
          SizedBox(height: h*0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width:w*0.08),
              Text(
                      "Your Groups",
                      style: Styles.mainHeadStyle.copyWith(color: Colors.white),
                    ),
              SizedBox(width:w*0.23),
              IconButton(
                          icon: Icon(Icons.add,color: Colors.white),
                          onPressed: () {},
                        ),
              IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit,color:Colors.white)
                        ),
            ],
          ),
          // Container(
          //   padding: EdgeInsets.fromLTRB(w*0.08,0, w*0.08, 0),
          //   color: Colors.black,
          //   child: Column(
          //     children: [
          //       const Gap(15),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             "Your Groups",
          //             style: Styles.mainHeadStyle.copyWith(color: Colors.white),
          //           ),
          //           Container(
          //               child: Row(
          //             children: [
          //               IconButton(
          //                 icon: Icon(Icons.add,color: Colors.white),
          //                 onPressed: () {},
          //               ),
          //               IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(Icons.edit,color:Colors.white)
          //               ),
          //             ],
          //           ))
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: w*0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GroupCard(
                      groupName: 'Group Name',
                      numberOfMembers: 5,
                      totalBill: 100,
                      yourBill: 20,
                    ),
                    GroupCard(
                        groupName: 'Group Name',
                        numberOfMembers: 5,
                        totalBill: 100,
                        yourBill: 20,
                      ),
                    GroupCard(
                      groupName: 'Group Name',
                      numberOfMembers: 5,
                      totalBill: 100,
                      yourBill: 20,
                    ),
                    GroupCard(
                      groupName: 'Group Name',
                      numberOfMembers: 5,
                      totalBill: 100,
                      yourBill: 20,
                    )
                  ],
                ),
                SizedBox(height: h*0.03),
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(left: w*0.04),
            child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Group Transactions",
                      style: Styles.mainHeadStyle2.copyWith(color: Colors.blue),
                    ),
                    Container(
                        child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add,color: Colors.blue)
                        ),
                      ],
                    ))
                  ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                IndCardWidget(
                  profilePhotoUrl: 'https://googleflutter.com/sample_image.jpg', 
                  username: 'John Doe', 
                  amount: '+980',
                ),
                IndCardWidget(
                  profilePhotoUrl: 'https://googleflutter.com/sample_image.jpg', 
                  username: 'John Doe', 
                  amount: '-710',
                ),
                IndCardWidget(
                  profilePhotoUrl: 'https://googleflutter.com/sample_image.jpg', 
                  username: 'John Doe', 
                  amount: '+980',
                ),
                IndCardWidget(
                  profilePhotoUrl: 'https://googleflutter.com/sample_image.jpg', 
                  username: 'John Doe', 
                  amount: '-710',
                ),
                IndCardWidget(
                  profilePhotoUrl: 'https://googleflutter.com/sample_image.jpg', 
                  username: 'John Doe', 
                  amount: '+980',
                ),
                IndCardWidget(
                  profilePhotoUrl: 'https://googleflutter.com/sample_image.jpg', 
                  username: 'John Doe', 
                  amount: '-710',
                ),
                IndCardWidget(
                  profilePhotoUrl: 'https://googleflutter.com/sample_image.jpg', 
                  username: 'John Doe', 
                  amount: '+143',
                ),
                IndCardWidget(
                  profilePhotoUrl: 'https://googleflutter.com/sample_image.jpg', 
                  username: 'John Doe', 
                  amount: '-710',
                ),
              ],
            ),
          ),
              ],
            )
            
          ),
          
        ],
      ) ;
  }
}
