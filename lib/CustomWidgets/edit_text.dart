import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  TextEditingController controller;
  Icon icon;
  String text;
  final bool obscure;

  EditText({required this.controller, required this.icon, required this.text, required this.obscure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 10.0,
        child: TextField(
          cursorColor: Colors.lightBlue,
          style: TextStyle(
            color: Colors.lightBlue
          ),
          obscureText: obscure,
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(prefixIcon: icon, hintText: text),
        ),
      ),
    );
  }
}
