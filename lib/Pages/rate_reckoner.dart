import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RateReckoner extends StatefulWidget {
  const RateReckoner({Key? key}) : super(key: key);

  @override
  _RateReckonerState createState() => _RateReckonerState();
}

class _RateReckonerState extends State<RateReckoner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(child: Text('Rate Reckoner')),
    );
  }
}
