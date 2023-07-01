import 'package:flowpay/Payments/paycontact_card.dart';
import 'package:flowpay/Payments/paymentstile.dart';
import 'package:flutter/material.dart';

class PaymentsPage extends StatefulWidget {
  @override
  _PaymentsPageState createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  String enteredText = '';
  double transferAmount = 0;

  List<Map<String, String>> contactList = [
    {
      'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
      'username': 'John Doe',
      'phoneNumber': '+1234567890',
    },
    {
      'profilePhotoUrl': 'https://googleflutter.com/sample_image.jpg',
      'username': 'John Doe',
      'phoneNumber': '+0987654321',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    double w = mediaQuery.size.width;
    double h = mediaQuery.size.height;

    List<PaymentsTile> paymentHistory = List.filled(
      6,
      const PaymentsTile(
        profilePhotoUrl: 'https://googleflutter.com/sample_image.jpg',
        username: 'John Doe',
        phoneNumber: '+1234567890',)
    );

    void _showTransferDialog(String phoneNumber) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: w * 0.7, // Adjust the width as per your requirements
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Transfer to $phoneNumber', // Display the phone number
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            transferAmount = double.parse(value);
                          });
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter the amount',
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
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Perform the transfer logic here
                              print('Transfer amount: $transferAmount');
                              Navigator.of(context).pop();
                            },
                            child: Text('Transfer'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }


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
                        _showTransferDialog(contact['phoneNumber']!); // Pass the phone number
                      },
                  );
                }).toList(),
              ),
            ],
            SizedBox(height: h * 0.03),
            Text(
                'Contacts:',
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
            ...paymentHistory,
          ],
        ),
      ),
    );
  }
}
