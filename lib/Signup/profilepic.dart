import 'package:flutter/material.dart';

class Profilepic extends StatelessWidget {
  const Profilepic({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
              onPressed: () {
                // Add your onPressed logic here
              },
              icon: Icon(Icons.file_upload, color: Colors.black),
              label: Text(
                'Add your profile pic',
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            );
  }
}