import 'dart:async';

import 'package:Flutter_Job_Portal/screens/homescreen.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:flutter/material.dart';

class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 75),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Image.asset(
                "assets/images/done.png",
                height: 170,
                width: 230,
              ),
            ),
            SizedBox(height: 40),
            Text("Hurrey!",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: colorPrimary)),
            SizedBox(height: 15),
            Text(
                "Your registration is done successfully. \n   Your company’s unique code is",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF898E8A))),
            SizedBox(height: 15),
            Text("473XYZ54",
                style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF55524C))),
            // Timer(Duration(seconds: 4), () => navigatorKey.currentState.pushNamed("homeScreen")),
          ]),
        ),
      ),
    );
  }
}
