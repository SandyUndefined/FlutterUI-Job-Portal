import 'package:Flutter_Job_Portal/screens/surveydetails.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SurveyFilter extends StatefulWidget {
  const SurveyFilter({Key? key}) : super(key: key);

  @override
  _SurveyFilterState createState() => _SurveyFilterState();
}

class _SurveyFilterState extends State<SurveyFilter> {
  double _pointerValue = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(65.0),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Card(
                  elevation: 4,
                  color: colorSelectedButton,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 35,
                    width: 85,
                    child: Center(
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text('Food quality',
                                style: TextStyle(fontSize: 14)))),
                  )),
            ),
          ),
        ),
        backgroundColor: colorBackground,
        flexibleSpace: FlexibleSpaceBar(),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset("assets/images/back.png"),
          ),
        ),
        title: Text(
          "Survey history",
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
              onTap: () => bottomSheet(context),
              child: Image.asset("assets/images/filter.png"),
            ),
          ),
        ],
      ),
      backgroundColor: colorBackground,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SurveyDetails())),
                child: Card(
                  color: colorBackground,
                  elevation: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                "12 Jun, Monday",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Card(
                                  elevation: 4,
                                  color: colorSelectedButton,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: 25,
                                    child: Center(
                                        child: FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text('Finance',
                                                style:
                                                    TextStyle(fontSize: 14)))),
                                  ),
                                ),
                                Card(
                                    elevation: 4,
                                    color: colorSelectedButton,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 20, right: 20),
                                      height: 25,
                                      child: Center(
                                          child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Text('Food',
                                                  style: TextStyle(
                                                      fontSize: 14)))),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // this is emoji
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(
                                  showLabels: false,
                                  showTicks: false,
                                  startAngle: 270,
                                  endAngle: 270,
                                  minimum: 0,
                                  maximum: 100,
                                  radiusFactor: 1.2,
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
                                          width: 25,
                                          height: 25,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${(_pointerValue).toInt()}%",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                fontStyle: FontStyle.normal,
                                color: colorPrimary),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                color: colorBackground,
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              "12 Jun, Monday",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(height: 20),
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
                                  height: 25,
                                  child: Center(
                                      child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text('Finance',
                                              style: TextStyle(fontSize: 14)))),
                                ),
                              ),
                              Card(
                                  elevation: 4,
                                  color: colorSelectedButton,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: 25,
                                    child: Center(
                                        child: FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text('Food',
                                                style:
                                                    TextStyle(fontSize: 14)))),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // this is emoji
                    // this is emoji
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: SfRadialGauge(
                            axes: <RadialAxis>[
                              RadialAxis(
                                showLabels: false,
                                showTicks: false,
                                startAngle: 270,
                                endAngle: 270,
                                minimum: 0,
                                maximum: 100,
                                radiusFactor: 1.2,
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
                                        width: 25,
                                        height: 25,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "${(_pointerValue).toInt()}%",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              fontStyle: FontStyle.normal,
                              color: colorPrimary),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                color: colorBackground,
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              "12 Jun, Monday",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(height: 20),
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
                                  height: 25,
                                  child: Center(
                                      child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text('Finance',
                                              style: TextStyle(fontSize: 14)))),
                                ),
                              ),
                              Card(
                                  elevation: 4,
                                  color: colorSelectedButton,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: 25,
                                    child: Center(
                                        child: FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text('Food',
                                                style:
                                                    TextStyle(fontSize: 14)))),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // this is emoji
                    // this is emoji
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: SfRadialGauge(
                            axes: <RadialAxis>[
                              RadialAxis(
                                showLabels: false,
                                showTicks: false,
                                startAngle: 270,
                                endAngle: 270,
                                minimum: 0,
                                maximum: 100,
                                radiusFactor: 1.2,
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
                                        width: 25,
                                        height: 25,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "${(_pointerValue).toInt()}%",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              fontStyle: FontStyle.normal,
                              color: colorPrimary),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                color: colorBackground,
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              "12 Jun, Monday",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(height: 20),
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
                                  height: 25,
                                  child: Center(
                                      child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text('Finance',
                                              style: TextStyle(fontSize: 14)))),
                                ),
                              ),
                              Card(
                                  elevation: 4,
                                  color: colorSelectedButton,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: 25,
                                    child: Center(
                                        child: FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text('Food',
                                                style:
                                                    TextStyle(fontSize: 14)))),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // this is emoji
                    // this is emoji
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: SfRadialGauge(
                            axes: <RadialAxis>[
                              RadialAxis(
                                showLabels: false,
                                showTicks: false,
                                startAngle: 270,
                                endAngle: 270,
                                minimum: 0,
                                maximum: 100,
                                radiusFactor: 1.2,
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
                                        width: 25,
                                        height: 25,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "${(_pointerValue).toInt()}%",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              fontStyle: FontStyle.normal,
                              color: colorPrimary),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
            height: MediaQuery.of(context).size.height,
            child: new Container(
              decoration: new BoxDecoration(
                  color: colorBackground,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(20.0))),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Catagory",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: colorPrimaryText),
                      ),
                    ),
                    SizedBox(height: 15),
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
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Department",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: colorPrimaryText),
                      ),
                    ),
                    SizedBox(height: 15),
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
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Reset Filter"),
                          style: ElevatedButton.styleFrom(
                            // minimumSize: Size(double.infinity, 30),
                            primary: Color(0xFFFFFAED),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            textStyle: TextStyle(
                                color: Color(0xff898E8A),
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SurveyFilter())),
                          child: Text("Apply Filter"),
                          style: ElevatedButton.styleFrom(
                            // minimumSize: Size(double.infinity, 30),
                            primary: colorButton,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    )
                    // ButtonWidget(
                    //   onPressed: () {},
                    //   child: Text("Reset Filter"),
                    // )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
