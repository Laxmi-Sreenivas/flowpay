import 'package:flowpay/Payments/paycontact_card.dart';
import 'package:flutter/material.dart';
import 'package:flowpay/Transactions/historytile.dart';

class PaymentsPage extends StatefulWidget {
  @override
  _PaymentsPageState createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  String enteredText = '';

  List<Map<String, String>> contactList = [
    {
      'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
      'username': 'John Doe',
      'phoneNumber': '+1234567890',
    },
    {
      'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
      'username': 'Jane Smith',
      'phoneNumber': '+9876543210',
    },
    {
      'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
      'username': 'Alice Johnson',
      'phoneNumber': '+2468135790',
    },
  ];

  @override
  Widget build(BuildContext context) {

    final MediaQueryData mediaQuery = MediaQuery.of(context);
    double w = mediaQuery.size.width;
    double h = mediaQuery.size.height;

    List<HistoryTile> Paymenthistory = List.filled(
        6,
        const HistoryTile(
          sender: "Chandrika",
          time: "March 1, 2023 at 17:40 PM",
          amount: 143,
        ));

      
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Contact or Number:',
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  enteredText = value;
                });
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Enter 3 digits or letters',
                filled: true,
                fillColor: Colors.grey[300],
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            if (enteredText.length >= 3) ...[
              SizedBox(height: 16),
              Text(
                'Pay Contact Card:',
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
              Column(
                children: contactList.map((contact) {
                  return PayContactCard(
                    profilePhotoUrl: contact['profilePhotoUrl']!,
                    username: contact['username']!,
                    phoneNumber: contact['phoneNumber']!,
                    onPayPressed: () {
                      print('Pay button pressed');
                    },
                  );
                }).toList(),
              ),
            ],
            SizedBox(height:h*0.03),
            ...Paymenthistory,
          ],
        ),
      ),
    );
  }
}
