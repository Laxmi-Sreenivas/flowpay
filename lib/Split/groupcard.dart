// import 'package:flowpay/Split/styles/app_styles.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:gap/gap.dart';
// import 'package:flowpay/Split/styles/app_layout.dart';

// class GroupCard extends StatelessWidget {
//   const GroupCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MediaQueryData mediaQuery = MediaQuery.of(context);
//     double w = mediaQuery.size.width;
//     double h = mediaQuery.size.height;
    
//     return SizedBox(
//       width: w,
//       height: 200,
//       child: Container(
//           margin: const EdgeInsets.only(right: 16),
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage('https://assets-global.website-files.com/5f734f4dbd95382f4fdfa0ea/63e120dbe702d4eac9263e64_IMG%20-%20Utility%20First-p-800.png'), // Replace with your image path
//               fit: BoxFit.cover,
//             ),
//             borderRadius: const BorderRadius.all(Radius.circular(21)),
//           ),
//         child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text("Group Name", style: Styles.headLineStyle1,),
//                       const Spacer(),
//                       Text("# Members", style: Styles.headLineStyle3,),
//                     ],
//                   ),
//                   Gap(48),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 10),
//                         child: Text("Total Bill : ", style: Styles.headLineStyle3,),
//                       ),
//                       const Spacer(),
//                       Padding(
//                         padding: EdgeInsets.only(right: 20),
//                         child: Text("Your Bill : ", style: Styles.headLineStyle3,),
//                       ),

//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 10),
//                         child: Text("####", style: Styles.rupeeStyle,),
//                       ),
//                       const Spacer(),
//                       Text("####", style: Styles.rupeeStyle,),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         )
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
      final String groupName;
      final int numberOfMembers;
      final double totalBill;
      final double yourBill;

const GroupCard({Key? key,
        required this.groupName,
        required this.numberOfMembers,
        required this.totalBill,
        required this.yourBill,
        }) : super(key: key);

@override
Widget build(BuildContext context) {
  final MediaQueryData mediaQuery = MediaQuery.of(context);
    double w = mediaQuery.size.width;
    double h = mediaQuery.size.height;
return Column(
        children: [
          Container(
          width: w,
          height: h * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
              'https://assets-global.website-files.com/5f734f4dbd95382f4fdfa0ea/63e120dbe702d4eac9263e64_IMG%20-%20Utility%20First-p-800.png',
              ),
              fit: BoxFit.cover,
              ),
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              SizedBox(height:h*0.02),
              Row(
                children: [
                  SizedBox(width:w*0.02),
                  Text(
                groupName,
                style: TextStyle(fontSize: w*0.08, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                SizedBox(width:w*0.16),
              Text(
                '$numberOfMembers members',
                style: TextStyle(fontSize: w*0.06, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 222, 146, 171)),
                ),
                ],
              ),
              SizedBox(height:h*0.15),
              Row(
                children: [
                  SizedBox(width:w*0.06),
                  Text(
                    '$totalBill \$',
                    style: TextStyle(fontSize: w*0.08, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  SizedBox(width:w*0.4),
              Text(
                  '$yourBill \$',
                  style: TextStyle(fontSize: w*0.06, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 222, 146, 171)),
                  ),
                ],
              ),
          ],
          ),
        ),
        
        ],
);
      }
    }
