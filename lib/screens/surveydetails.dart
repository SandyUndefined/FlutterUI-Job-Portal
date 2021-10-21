import 'package:Flutter_Job_Portal/screens/surveyfilter.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SurveyDetails extends StatefulWidget {
  const SurveyDetails({Key? key}) : super(key: key);

  @override
  _SurveyDetailsState createState() => _SurveyDetailsState();
}

class _SurveyDetailsState extends State<SurveyDetails> {
  double _pointerValue = 50;
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
        title: Text(
          "Survey Details",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              color: colorPrimaryText),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(18),
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SurveyFilter())),
              child: Image.asset("assets/images/filter.png"),
            ),
          ),
        ],
      ),
      backgroundColor: colorBackground,
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
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
              padding: const EdgeInsets.only(top: 30.0),
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
          ],
        ),
      ),
    );
  }
}
