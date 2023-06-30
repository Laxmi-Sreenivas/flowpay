import 'package:flowpay/Payments/paycontact_card.dart';
import 'package:flutter/material.dart';

class PaymentsPage extends StatefulWidget {
  @override
  _PaymentsPageState createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  String enteredText = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Contact or Number:',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    enteredText = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter 3 digits or letters',
                ),
              ),
              if (enteredText.length == 3) ...[
                SizedBox(height: 16),
                Text(
                  'Pay Contact Card:',
                  style: TextStyle(fontSize: 16),
                ),
                PayContactCard(profilePhotoUrl: 'https://example.com/profile_photo.jpg',
                  username: 'John Doe',
                  phoneNumber: '+1234567890',
                  onPayPressed: () {
                    // Perform payment logic here
                    print('Pay button pressed');
                  }, 
                  )
              ],
            ],
          ),
        ),
      );
    
  }
}
