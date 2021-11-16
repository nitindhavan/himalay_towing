import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  String cardTitle;
  bool selected;
  Function onTap;
  MenuCard(
      {Key? key, required this.cardTitle, required this.selected, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          onTap();
        },
        child: Container(
          color: !selected ? Colors.white : Colors.lightBlue,
          alignment: Alignment.center,
          child: Text(
            cardTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: !selected ? Colors.lightBlue: Colors.white),
          ),
        ),
      ),
    );
  }
}
