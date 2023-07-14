import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  final TextEditingController email;
  final TextEditingController passwd;

  const TextBox({super.key, required this.email, required this.passwd});

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
              "E-mail",
              style: TextStyle(
                fontSize: fontsize,
                color: Colors.white,
              ),
            ),
          ),
        ),
        TextField(
          controller: widget.email,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'myemail@mail.com',
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
