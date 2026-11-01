import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../common/constant.dart';
import 'body_page/body_acceuil.dart';
import 'drawer.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  final iconList = <IconData>[
    Icons.airplanemode_on_outlined,
    Icons.add_circle_outline_rounded,
    Icons.notifications_active_outlined,
    Icons.person_pin_circle_sharp
  ];
  var _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => exit(0),
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        drawer: (ClientDrawer()),
        appBar: buildAppBar(context),
        body: const BodyAcceuil(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ksecondaryColor,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              "assets/images/discussion.png",
              // width: 6,
              // height: 10,
              // fit: BoxFit.fitWidth,
              // color: kPrimaryColor,
            ),
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
        backgroundColor: kBackgroundColor,
        iconTheme: const IconThemeData(color: kPrimaryColor),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            radius: 13,
            child: Icon(
              Icons.person_rounded,
              color: kHeaderColor,
              size: 17,
            ),
            backgroundColor: kTeXTColor,
          ),
          Icon(
            Icons.arrow_drop_down_sharp,
            color: ksecondaryColor,
            size: 32,
          ),
          Padding(padding: EdgeInsets.only(left: kDefaultPadding))
        ],
        title: Container(
          width: size.width * 0.6,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.search,
                color: kTeXTColor,
              ),
              Padding(padding: EdgeInsets.only(left: kDefaultPadding)),
              Text(
                "rechercher",
                style: TextStyle(
                    color: kTeXTColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
        // actions: <Widget>[],
        );
  }
}
