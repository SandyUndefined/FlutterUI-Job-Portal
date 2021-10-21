import 'package:Flutter_Job_Portal/screens/employeer.dart';
import 'package:Flutter_Job_Portal/screens/homescreen.dart';
import 'package:flutter/material.dart';

// Route Names
const String homeScreen = 'homeScreen';
const String employeer = 'employeer';
// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homeScreen:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case employeer:
      return MaterialPageRoute(builder: (context) => Employeer());
    default:
      throw ('This route name does not exit');
  }
}
