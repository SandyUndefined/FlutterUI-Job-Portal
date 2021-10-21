import 'dart:async';
import 'package:Flutter_Job_Portal/screens/surveyhistory.dart';
import 'package:Flutter_Job_Portal/screens/useraccount.dart';
import 'package:Flutter_Job_Portal/utils/datetimepicker.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:Flutter_Job_Portal/screens/done.dart';
import 'package:Flutter_Job_Portal/screens/usersProfile.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

int _current = 0;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Timer _timer;
  double _pointerValue = 50;

  @override
  void initState() {
    _timer = Timer(const Duration(milliseconds: 1500), () {
      setState(() {
        _pointerValue = 70.toDouble();
      });
    });
    super.initState();
  }

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
              padding: const EdgeInsets.only(top: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Latest survey results",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        color: colorPrimaryText,
                        fontSize: 20)),
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("12 Jun, Monday",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      color: colorPrimaryText,
                      fontSize: 16)),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Card(
                    elevation: 4,
                    color: colorSelectedButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 40,
                      child: Center(
                          child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text('Finance',
                                  style: TextStyle(fontSize: 14)))),
                    )),
                Card(
                    elevation: 4,
                    color: colorSelectedButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 40,
                      child: Center(
                          child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text('Food',
                                  style: TextStyle(fontSize: 14)))),
                    )),
              ],
            ),
            SizedBox(height: 20),
            Card(
              color: colorBackground,
              elevation: 4,
              child: Row(
                children: [
                  Container(
                    height: 110,
                    margin: EdgeInsets.all(20),
                    child: Center(
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: colorPrimaryText,
                                    fontSize: 24,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700),
                                children: <TextSpan>[
                                  TextSpan(text: "Your Happiness\n Score is "),
                                  TextSpan(
                                      text: "${(_pointerValue).toInt()}%",
                                      style: TextStyle(color: colorPrimary)),
                                ]),
                            // "Your Happiness\n Score is ${(_pointerValue).toInt()}%",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    child: SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          showLabels: false,
                          showTicks: false,
                          startAngle: 270,
                          endAngle: 270,
                          minimum: 0,
                          maximum: 100,
                          radiusFactor: 1.4,
                          axisLineStyle: AxisLineStyle(
                              color: colorSelectedButton,
                              thicknessUnit: GaugeSizeUnit.factor,
                              thickness: 0.1),
                          pointers: <GaugePointer>[
                            RangePointer(
                                value: _pointerValue,
                                cornerStyle: CornerStyle.bothCurve,
                                enableAnimation: true,
                                animationDuration: 1200,
                                animationType: AnimationType.ease,
                                sizeUnit: GaugeSizeUnit.factor,
                                color: colorPrimary,
                                width: 0.1),
                          ],
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                positionFactor: 0.1,
                                widget: Image.asset(
                                  "assets/images/yellowemoji.png",
                                  width: 55,
                                  height: 55,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 4,
                  color: colorBackground,
                  child: Container(
                    width: 140,
                    height: 120,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            "256",
                            style: TextStyle(
                                fontSize: 28,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: colorSecondaryText),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Total Registered\n   Employees",
                            style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: colorSecondaryText),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  color: colorBackground,
                  child: Container(
                    width: 140,
                    height: 120,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            "256",
                            style: TextStyle(
                                fontSize: 28,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: colorSecondaryText),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Total Registered\n   Employees",
                            style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: colorSecondaryText),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          child: SfRadialGauge(
                            axes: <RadialAxis>[
                              RadialAxis(
                                showLabels: false,
                                showTicks: false,
                                startAngle: 270,
                                endAngle: 270,
                                minimum: 0,
                                maximum: 100,
                                radiusFactor: 1.4,
                                axisLineStyle: AxisLineStyle(
                                    color: Color(0xFF92edd0),
                                    thicknessUnit: GaugeSizeUnit.factor,
                                    thickness: 0.1),
                                pointers: <GaugePointer>[
                                  RangePointer(
                                      value: _pointerValue,
                                      cornerStyle: CornerStyle.bothCurve,
                                      enableAnimation: true,
                                      animationDuration: 1200,
                                      animationType: AnimationType.ease,
                                      sizeUnit: GaugeSizeUnit.factor,
                                      color: Color(0xFF20C08E),
                                      width: 0.1),
                                ],
                                annotations: <GaugeAnnotation>[
                                  GaugeAnnotation(
                                      positionFactor: 0.1,
                                      widget: Image.asset(
                                        "assets/images/greenemoji.png",
                                        width: 42,
                                        height: 42,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text("15%",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color(0xFF20C08E))),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          child: SfRadialGauge(
                            axes: <RadialAxis>[
                              RadialAxis(
                                showLabels: false,
                                showTicks: false,
                                startAngle: 270,
                                endAngle: 270,
                                minimum: 0,
                                maximum: 100,
                                radiusFactor: 1.4,
                                axisLineStyle: AxisLineStyle(
                                    color: colorSelectedButton,
                                    thicknessUnit: GaugeSizeUnit.factor,
                                    thickness: 0.1),
                                pointers: <GaugePointer>[
                                  RangePointer(
                                      value: _pointerValue,
                                      cornerStyle: CornerStyle.bothCurve,
                                      enableAnimation: true,
                                      animationDuration: 1200,
                                      animationType: AnimationType.ease,
                                      sizeUnit: GaugeSizeUnit.factor,
                                      color: colorPrimary,
                                      width: 0.1),
                                ],
                                annotations: <GaugeAnnotation>[
                                  GaugeAnnotation(
                                      positionFactor: 0.1,
                                      widget: Image.asset(
                                        "assets/images/yellowemoji.png",
                                        width: 70,
                                        height: 70,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text("70%",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  color: colorPrimary)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          child: SfRadialGauge(
                            axes: <RadialAxis>[
                              RadialAxis(
                                showLabels: false,
                                showTicks: false,
                                startAngle: 270,
                                endAngle: 270,
                                minimum: 0,
                                maximum: 100,
                                radiusFactor: 1.4,
                                axisLineStyle: AxisLineStyle(
                                    color: Color(0xFFffccd2),
                                    thicknessUnit: GaugeSizeUnit.factor,
                                    thickness: 0.1),
                                pointers: <GaugePointer>[
                                  RangePointer(
                                      value: _pointerValue,
                                      cornerStyle: CornerStyle.bothCurve,
                                      enableAnimation: true,
                                      animationDuration: 1200,
                                      animationType: AnimationType.ease,
                                      sizeUnit: GaugeSizeUnit.factor,
                                      color: Color(0xFFF26C7C),
                                      width: 0.1),
                                ],
                                annotations: <GaugeAnnotation>[
                                  GaugeAnnotation(
                                      positionFactor: 0.1,
                                      widget: Image.asset(
                                        "assets/images/redemoji.png",
                                        width: 42,
                                        height: 42,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text("15%",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color(0xFFF26C7C))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            ButtonWidget(
                onPressed: () => bottomSheet(context),
                child: Text("+ Create a new Survey"))
          ],
        ),
      ),
    );
  }

  void bottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.55,
            child: new Container(
              decoration: new BoxDecoration(
                  color: colorBackground,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(20.0))),
              child: Sliders(context),
            ),
          );
        });
  }

  Widget Sliders(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: <Widget>[
          Container(
            child: CarouselSlider(
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    print(index);
                    _current = index;
                  });
                },
                enableInfiniteScroll: false,
                height: size.height * 0.3,
                viewportFraction: 1,
                aspectRatio: 2.0,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
                autoPlay: false,
              ),
              items: survey,
            ),
          ),
          SizedBox(height: 25),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
              width: _current == index ? 10.0 : 6.0,
              height: _current == index ? 10.0 : 6.0,
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Colors.black
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            )
          ]),
          SizedBox(height: 20),
          ButtonWidget(
              onPressed: () {
                if (_current == 2) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SurveyHistory()));
                } else {
                  buttonCarouselController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                  // Navigator.push(context,index++);
                }
              },
              child: Text("Next"))
        ],
      ),
    );
  }
}

final List<Widget> survey = <Widget>[
  // First Sliders
  Container(
    child: Column(
      children: [
        Text(
          "Select a catagoty do you want\n  to create a survey about?",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 20),
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
            'General',
            'Accomodation',
            'Food quality',
            'Working conditions',
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
      ],
    ),
  ),

  // Second Slider
  Container(
    child: Column(
      children: [
        Text(
          "When do you want to start\nthe survey?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: colorPrimaryText,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
        // DatePickerWidget(
        //   looping: false, // default is not looping
        //   firstDate: DateTime(1990, 01, 01),
        //   lastDate: DateTime(2030, 1, 1),
        //   initialDate: DateTime(1991, 10, 12),
        //   dateFormat: "dd-MMM-yyyy",
        //   // locale: DatePicker.localeFromString('en'),
        //   // onChange: (DateTime newDate, _) => _selectedDate = newDate,
        //   pickerTheme: DateTimePickerTheme(
        //     pickerHeight: 80,
        //     backgroundColor: colorBackground,
        //     itemTextStyle: TextStyle(color: Colors.black, fontSize: 19),
        //   ),
        // ),
        SizedBox(height: 20),
        Text(
          "Select a Duration",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: colorPrimaryText,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 20),
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
            '1 day',
            '2 days',
            '3 days',
          ],
          buttonValues: [
            "STUDENT",
            "PARENT",
            "TEACHER",
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
      ],
    ),
  ),

  // Third SLider
  Container(
    child: Column(
      children: [
        Text(
          "Which department you want\n to create the survey for?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: colorPrimaryText,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 20),
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
      ],
    ),
  ),
];
