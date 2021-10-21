import 'package:Flutter_Job_Portal/screens/jobs.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:Flutter_Job_Portal/widgets/textField.dart';
import 'package:flutter/material.dart';

class Employeer extends StatefulWidget {
  const Employeer({Key? key}) : super(key: key);

  @override
  _EmployeerState createState() => _EmployeerState();
}

class _EmployeerState extends State<Employeer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Container(
        margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 45),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  "assets/images/employeer.png",
                  height: 170,
                  width: 230,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Enter your employee code provided\n by your employer",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF585858)),
              ),
              SizedBox(height: 25),
              TextFormFieldWidget(hintText: "Employee code"),
              SizedBox(height: 225),
              ButtonWidget(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Jobs())),
                  child: Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
