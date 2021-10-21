import 'package:Flutter_Job_Portal/screens/experience.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:Flutter_Job_Portal/widgets/textField.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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
                  "assets/images/post.png",
                  height: 170,
                  width: 230,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Select your job post",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF585858)),
              ),
              SizedBox(height: 25),
              CustomRadioButton(
                height: 45,
                enableButtonWrap: true,
                autoWidth: true,
                elevation: 3,
                enableShape: true,
                shapeRadius: 5,
                padding: 0,
                selectedBorderColor: colorSelectedButton,
                unSelectedBorderColor: colorUnselectedButton,
                unSelectedColor: colorUnselectedButton,
                buttonLables: [
                  'Marketing',
                  'Finance',
                  'Logistics',
                  'Human Resource',
                  '+ custom'
                ],
                buttonValues: [
                  "STUDENT",
                  "PARENT",
                  "TEACHER",
                  'Human Resource',
                  'custom'
                ],
                defaultSelected: "STUDENT",
                buttonTextStyle: ButtonTextStyle(
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        color: colorSecondaryText)),
                radioButtonValue: (value) {
                  print(value);
                },
                selectedColor: colorSelectedButton,
              ),
              SizedBox(height: 225),
              ButtonWidget(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Experience())),
                  child: Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
