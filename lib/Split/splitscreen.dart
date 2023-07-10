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

    TextEditingController groupNameController = TextEditingController();
    TextEditingController groupMembersController = TextEditingController();

    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Your Groups",
              style: Styles.mainHeadStyle.copyWith(color: Colors.white),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.add,
                  size: w * 0.1,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Theme(
                        data: ThemeData(
                          dialogBackgroundColor: Colors.black,
                        ),
                        child: AlertDialog(
                          title: Text(
                            "Add Group",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                controller: groupNameController,
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
                                  hintText: 'Group Name',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              TextField(
                                controller: groupMembersController,
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
                                  hintText: 'Add members',
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
                                // Add group logic here using groupName and groupMembers

                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ];
      },
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: groupList.map((group) {
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
      ),
    );
  }
}
