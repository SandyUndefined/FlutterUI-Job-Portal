import 'package:Flutter_Job_Portal/screens/homeScreen2.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        backgroundColor: colorBackground,
        leading: InkWell(
          onTap: () => print("this is working"),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset("assets/images/hamburger.png"),
          ),
        ),
        title: Text(
          "Company name",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              color: colorPrimaryText),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 160.0),
              child: Center(
                child: Image.asset(
                  "assets/images/survey.png",
                  width: 193,
                  height: 188,
                ),
              ),
            ),
            SizedBox(height: 35),
            Text(
              "You have not created  any survey yet",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: colorTempText),
            ),
            SizedBox(height: 130),
            ButtonWidget(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home())),
                child: Text("+ Create a new Survey"))
          ],
        ),
      ),
    );
  }
}
