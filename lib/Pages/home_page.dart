import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:himalay/CustomWidgets/menu_card.dart';
import 'package:himalay/Pages/administration.dart';
import 'package:himalay/Pages/maintainance.dart';
import 'package:himalay/Pages/rate_reckoner.dart';
import 'package:himalay/Pages/reports.dart';
import 'package:himalay/Pages/training.dart';
import 'package:himalay/enums.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  menus currentMenu = menus.rateReckoner;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MenuCard(
                  cardTitle: 'Rate Reckoner',
                  selected: currentMenu == menus.rateReckoner ? true : false,
                  onTap: () {
                    setState(() {
                      currentMenu=menus.rateReckoner;
                    });
                  },
                ),
                MenuCard(
                    cardTitle: 'Training',
                    selected: currentMenu == menus.training ? true : false,
                    onTap: () {
                      setState(() {
                        currentMenu=menus.training;
                      });
                    }),
                MenuCard(
                    cardTitle: 'Reports',
                    selected: currentMenu == menus.reports ? true : false,
                    onTap: () {
                      setState(() {
                        currentMenu=menus.reports;
                      });
                    }),
                MenuCard(
                    cardTitle: 'Maintenance',
                    selected: currentMenu == menus.maintenance ? true : false,
                    onTap: () {
                      setState(() {
                        currentMenu=menus.maintenance;
                      });
                    }),
                MenuCard(
                    cardTitle: 'Administration',
                    selected: currentMenu == menus.administration ? true : false,
                    onTap: () {
                      setState(() {
                        currentMenu=menus.administration;
                      });
                    }),
              ],
            ),
          ),
          Expanded(
            flex: 10,
              child: getSelectedScreen(currentMenu)),
        ],
      ),
    );
  }

  Widget getSelectedScreen(menus menu) {
    if(menu==menus.rateReckoner){
      return const RateReckoner();
    }else if(menu ==menus.training){
      return const Training();
    }else if(menu==menus.reports){
      return const Reports();
    }else if (menu==menus.maintenance){
      return const Maintenance();
    }else{
      return const Administration();
    }
  }
}
