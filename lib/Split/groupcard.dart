import 'package:flowpay/Split/individual.dart';
import 'package:flowpay/Split/styles/app_styles.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
      final String groupName;
      final String numberOfMembers;
      final String totalBill;
      final String yourBill;
      final String group_ID;
      

const GroupCard({Key? key,
        required this.groupName,
        required this.numberOfMembers,
        required this.totalBill,
        required this.yourBill,
        required this.group_ID,
        }) : super(key: key);

@override
Widget build(BuildContext context) {
  final MediaQueryData mediaQuery = MediaQuery.of(context);
    double w = mediaQuery.size.width;
    double h = mediaQuery.size.height;

    String imageUrl = '';
    //print('group_ID:'+group_ID);
    int remainder = int.parse(group_ID) % 3;

    if (remainder == 1) {
      //print(remainder);
      imageUrl = 'https://assets-global.website-files.com/5f734f4dbd95382f4fdfa0ea/63e120dba0e597a8b5b4cd64_IMG%20-%20Mainstream%20Ready-p-800.jpg';
    } else if (remainder == 2) {
      //print(remainder);
      imageUrl = 'https://assets-global.website-files.com/5f734f4dbd95382f4fdfa0ea/63e120dbe702d4eac9263e64_IMG%20-%20Utility%20First-p-800.png';
    } else if (remainder == 0) {
      //print(remainder);
      imageUrl = 'https://assets-global.website-files.com/5f734f4dbd95382f4fdfa0ea/63e120dbfcc20d69850f07e7_IMG%20-%20Battle-Tested-p-800.jpg';
    }

return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(right: w * 0.05),
              child: Container(
                width: w,
                height: h * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: h * 0.03),
                    Row(
                      children: [
                        SizedBox(width: w * 0.02),
                        Text(
                          groupName,
                          style: TextStyle(
                            fontSize: w * 0.08,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: w * 0.1),
                        Text(
                          '$numberOfMembers members',
                          style: TextStyle(
                            fontSize: w * 0.06,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit, color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(height: h * 0.15),
                    Row(
                      children: [
                        SizedBox(width: w * 0.06),
                        Text(
                          '$totalBill \$',
                          style: TextStyle(
                            fontSize: w * 0.08,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: w * 0.4),
                        Text(
                          '$yourBill \$',
                          style: TextStyle(
                            fontSize: w * 0.06,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

        Container(
            color: Colors.black,
            child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: w*0.03),
                    Text(
                      "Group Transactions",
                      style: Styles.mainHeadStyle2.copyWith(color: Colors.blue),
                    ),
                    SizedBox(width: w*0.25),
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
          SingleChildScrollView(
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
);
      }
    }
