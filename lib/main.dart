// Copyright 2018 The Flutter team. All rights reserved.
import 'package:Flutter_Job_Portal/screens/phoneVerification.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('Hello World'),
            ),
            TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Phone())),
                child: Text("Next Page"))
          ],
        ),
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
