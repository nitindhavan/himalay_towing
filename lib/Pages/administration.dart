import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Administration extends StatefulWidget {
  const Administration({Key? key}) : super(key: key);

  @override
  _AdministrationState createState() => _AdministrationState();
}

class _AdministrationState extends State<Administration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(child: Text('Administration')),
    );
  }
}
