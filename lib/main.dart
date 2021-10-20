// Copyright 2018 The Flutter team. All rights reserved.
import 'package:Flutter_Job_Portal/screens/phoneVerification.dart';
import 'package:flutter/material.dart';
import 'utils/screenVariable.dart';

void main() {
  sv.Init();
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Phone(),
    );
  }
}
