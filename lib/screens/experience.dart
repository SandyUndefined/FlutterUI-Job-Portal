import 'package:Flutter_Job_Portal/screens/today_one.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:flutter/material.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
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
                  "assets/images/Food.png",
                  height: 170,
                  width: 230,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "How was the food?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF585858)),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/redemoji.png",
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Not good",
                        style: TextStyle(
                            color: Color(0xffFF93A0),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/greenemoji.png",
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Okay",
                        style: TextStyle(
                            color: Color(0xff4FBB51),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/yellowemoji.png",
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Good",
                        style: TextStyle(
                            color: Color(0xffEBA742),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 225),
              ButtonWidget(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OneToday())),
                  child: Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
