import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  final TextEditingController phoneNo;
  final TextEditingController passwd;

  const TextBox({super.key, required this.phoneNo, required this.passwd});

  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    double topMargin = 0.05*h;
    double fontsize  = 0.04*w;


    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(bottom: fontsize/2),
          child: Container(
            margin: EdgeInsets.only(top: topMargin),
            child: Text(
              "Mobile Number",
              style: TextStyle(
                fontSize: fontsize,
                color: Colors.white,
              ),
            ),
          ),
        ),
        TextField(
          controller: widget.phoneNo,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: '+91 **********',
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(bottom: fontsize/2),
          child: Container(
            margin: EdgeInsets.only(top: topMargin),
            child: Text(
              "Password",
              style: TextStyle(
                fontSize: fontsize,
                color: Colors.white,
              ),
            ),
          ),
        ),
        TextField(
          controller: widget.passwd,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: '*************',
          ),
        ),
      ],
    );
  }
}
