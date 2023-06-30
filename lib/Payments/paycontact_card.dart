import 'package:flutter/material.dart';

class PayContactCard extends StatelessWidget {
  final String profilePhotoUrl;
  final String username;
  final String phoneNumber;
  final VoidCallback onPayPressed;

  const PayContactCard({
    Key? key,
    required this.profilePhotoUrl,
    required this.username,
    required this.phoneNumber,
    required this.onPayPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300], // Set the background color of the card
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(profilePhotoUrl),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Set the text color
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    phoneNumber,
                    style: TextStyle(
                      color: Colors.black, // Set the text color
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: onPayPressed,
              child: Text('Pay'),
            ),
          ],
        ),
      ),
    );
  }
}
