import 'package:Flutter_Job_Portal/screens/today_two.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:flutter/material.dart';

class OneToday extends StatefulWidget {
  const OneToday({Key? key}) : super(key: key);

  @override
  _OneTodayState createState() => _OneTodayState();
}

class _OneTodayState extends State<OneToday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBackground,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset("assets/images/back.png"),
          ),
        ),
      ),
      backgroundColor: colorBackground,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Text(
                "How was the food?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    color: Color(0xff675255)),
              ),
              SizedBox(height: 160),
              Image.asset("assets/images/redemoji.png",
                  width: 160, height: 160),
              Text("Not good",
                  style: TextStyle(
                    color: Color(0xffF26C7C),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 160),
              ButtonWidget(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TwoToday())),
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
