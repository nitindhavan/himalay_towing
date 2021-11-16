import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Training extends StatefulWidget {
  const Training({Key? key}) : super(key: key);

  @override
  _TrainingState createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(child: Text('Training')),
    );
  }
}
