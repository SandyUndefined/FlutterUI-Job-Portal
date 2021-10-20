import 'dart:async';
import 'dart:math';

import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
                                      "assets/images/progress.png")),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Card(
                  elevation: 4,
                  color: colorBackground,
                  child: Container(
                    width: 160,
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
                Card()
              ],
            ),
            ButtonWidget(onPressed: () {}, child: Text("+ Create a new Survey"))
          ],
        ),
      ),
    );
  }
}
