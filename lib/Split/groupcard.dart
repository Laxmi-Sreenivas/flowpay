import 'package:flowpay/Split/individual.dart';
import 'package:flowpay/Split/styles/app_styles.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final String groupName;
  final String numberOfMembers;
  final String totalBill;
  final String yourBill;
  final String group_ID;

  const GroupCard({
    Key? key,
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

    TextEditingController transactionNameController = TextEditingController();
    TextEditingController transactionAmountController = TextEditingController();

    String imageUrl = '';
    int remainder = int.parse(group_ID) % 3;

    if (remainder == 1) {
      imageUrl = 'https://assets-global.website-files.com/5f734f4dbd95382f4fdfa0ea/63e120dba0e597a8b5b4cd64_IMG%20-%20Mainstream%20Ready-p-800.jpg';
    } else if (remainder == 2) {
      imageUrl = 'https://assets-global.website-files.com/5f734f4dbd95382f4fdfa0ea/63e120dbe702d4eac9263e64_IMG%20-%20Utility%20First-p-800.png';
    } else if (remainder == 0) {
      imageUrl = 'https://assets-global.website-files.com/5f734f4dbd95382f4fdfa0ea/63e120dbfcc20d69850f07e7_IMG%20-%20Battle-Tested-p-800.jpg';
    }

    List<Map<String, dynamic>> individualCardData = [
      {
        'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
        'username': 'John Doe',
        'amount': '+980',
        'individual_id':'1',
      },
      {
        'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
        'username': 'John Doe',
        'amount': '-710',
        'individual_id':'2',
      },
      {
        'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
        'username': 'John Doe',
        'amount': '+980',
        'individual_id':'3',
      },
      {
        'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
        'username': 'John Doe',
        'amount': '-710',
        'individual_id':'4',
      },
      {
        'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
        'username': 'John Doe',
        'amount': '+980',
        'individual_id':'5',
      },
      {
        'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
        'username': 'John Doe',
        'amount': '-710',
        'individual_id':'6',
      },
      {
        'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
        'username': 'John Doe',
        'amount': '+143',
        'individual_id':'7',
      },
      {
        'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
        'username': 'John Doe',
        'amount': '-710',
        'individual_id':'8',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: w * 0.02),
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
                    SizedBox(width: w * 0.18),
                    Text(
                      '$numberOfMembers members',
                      style: TextStyle(
                        fontSize: w * 0.06,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
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
                    SizedBox(width: w * 0.5),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: w * 0.03),
              Text(
                "Group Transactions",
                style: Styles.mainHeadStyle2.copyWith(color: Colors.blue),
              ),
              SizedBox(width: w * 0.25),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print(group_ID);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Theme(
                              data: ThemeData(
                                dialogBackgroundColor: Colors.black,
                              ),
                              child: AlertDialog(
                                title: Text(
                                  "Add a Transaction",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextField(
                                      controller: transactionNameController,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(6),
                                          borderSide: BorderSide(
                                            width: mediaQuery.size.width * 0.001,
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.black,
                                        hintText: 'Transaction Name',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: h * 0.01),
                                    TextField(
                                      controller: transactionAmountController,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(6),
                                          borderSide: BorderSide(
                                            width: mediaQuery.size.width * 0.001,
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Colors.black,
                                        hintText: 'Amount',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    child: Text("Cancel"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: Text("Add"),
                                    onPressed: () {
                                      
                                      // Handle add transaction logic
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.add, color: Colors.blue),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: individualCardData.map((data) {
              return IndCardWidget(
                profilePhotoUrl: data['profilePhotoUrl'],
                username: data['username'],
                amount: data['amount'],
                individual_id: data['individual_id'],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
