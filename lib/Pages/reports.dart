import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:himalay/CustomWidgets/menu_card.dart';
import 'package:himalay/CustomWidgets/menu_card.dart';
import 'package:himalay/CustomWidgets/menu_card.dart';
import 'package:himalay/CustomWidgets/menu_card.dart';
import 'package:himalay/CustomWidgets/menu_card.dart';
import 'package:himalay/CustomWidgets/menu_card.dart';
import 'package:himalay/enums.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  reports currentReport=reports.mainReport;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MenuCard(
                  cardTitle: 'Main Report',
                  selected: currentReport == reports.mainReport ? true : false,
                  onTap: () {
                    setState(() {
                      currentReport=reports.mainReport;
                    });
                  },
                ),
                MenuCard(
                    cardTitle: 'Report1',
                    selected: currentReport == reports.report1 ? true : false,
                    onTap: () {
                      setState(() {
                        currentReport=reports.report1;
                      });
                    }),
                MenuCard(
                    cardTitle: 'Report2',
                    selected: currentReport == reports.report2 ? true : false,
                    onTap: () {
                      setState(() {
                        currentReport=reports.report2;
                      });
                    }),
                MenuCard(
                    cardTitle: 'Report3',
                    selected: currentReport == reports.report3 ? true : false,
                    onTap: () {
                      setState(() {
                        currentReport=reports.report3;
                      });
                    }),
                MenuCard(
                    cardTitle: 'Report4',
                    selected: currentReport == reports.report4 ? true : false,
                    onTap: () {
                      setState(() {
                        currentReport=reports.report4;
                      });
                    }),
              ],
            ),
          ),
          Expanded(
              flex: 10,
              child: getSelectedScreen(currentReport)),
        ],
      ),
    );
  }
  Widget getSelectedScreen(reports report) {
    if(report==reports.mainReport){
      return Center(child: Container(child: Text('Main Report'),));
    }else if(report ==reports.report1){
      return Center(child: Container(child: Text('Report1'),));
    }else if(report==reports.report2){
      return Center(child: Container(child: Text('Report2'),));
    }else if (report==reports.report3){
      return Center(child: Container(child: Text('Report3'),));
    }else{
      return Center(child: Container(child: Text('Report4'),));
    }
  }
}
