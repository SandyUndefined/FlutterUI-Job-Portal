import 'dart:async';
import 'dart:ui';
import 'package:Flutter_Job_Portal/screens/done.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/utils/screenVariable.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:Flutter_Job_Portal/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

int _current = 0;
int index = 3;
int count = 0;
TextEditingController _nameController = TextEditingController();
FocusNode _nameControllerFocus = FocusNode();
final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
late Timer _timer;
int _start = 10;
CarouselController buttonCarouselController = CarouselController();

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorBackground,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Container(
              child: SizedBox(
                height: size.height / 1.4,
                width: size.width,
                child: Container(
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
                    height: size.height / 1.4,
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                    autoPlay: false,
                  ),
                  items: imageSliders,
                )),
              ),
            ),
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
            SizedBox(height: 38),
            ButtonWidget(
                onPressed: () {
                  if (_current == 3) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Done()));
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
      ),
    );
  }
}

final List<Widget> imageSliders = <Widget>[
  // First slider
  Container(
      child: Column(children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(top: 90.0),
      child: Text(
        "Who are you?",
        style: TextStyle(
            color: Color(0xFF585858),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 25),
      ),
    ),
    SizedBox(height: 45),
    Container(
      width: 150,
      height: 150,
      child: Card(
        color: Color(0xFFFFD98E),
        elevation: 4.0,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 35, right: 35, bottom: 25),
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/employer.png",
                height: 70,
                width: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Employer",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    SizedBox(height: 25),
    Container(
      width: 150,
      height: 150,
      child: Card(
        color: Color(0xFFFFFAED),
        elevation: 4.0,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 35, right: 35, bottom: 25),
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/employee.png",
                height: 70,
                width: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Employee",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  ])),

  // Second slider
  SingleChildScrollView(
    child: Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              "assets/images/employee2.png",
              height: 170,
              width: 230,
            ),
          ),
          SizedBox(height: 40),
          Text(
            "What is your name?",
            style: TextStyle(
                color: colorSelectedButton,
                fontSize: 21,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15),
          TextFormFieldWidget(
            hintText: "Type your name",
            controller: _nameController,
            focusNode: _nameControllerFocus,
            obscureText: false,
            textInputType: TextInputType.text,
            actionKeyboard: TextInputAction.done,
            functionValidate: commonValidation,
            onSubmitField: () {},
          ),
          SizedBox(height: 40),
          Text(
            "What is your role?",
            style: TextStyle(
                color: Color(0xFF585858),
                fontSize: 21,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15),
          TextFormFieldWidget(
            hintText: "Type your name",
            controller: _nameController,
            focusNode: _nameControllerFocus,
            obscureText: false,
            textInputType: TextInputType.text,
            actionKeyboard: TextInputAction.done,
            functionValidate: commonValidation,
            onSubmitField: () {},
          ),
        ],
      ),
    ),
  ),

  // Third Slider
  SingleChildScrollView(
    child: Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.asset(
              "assets/images/form.png",
              height: 170,
              width: 230,
            ),
          ),
          SizedBox(height: 40),
          Text(
            "What is your name?",
            style: TextStyle(
                color: Color(0xFF585858),
                fontSize: 21,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15),
          TextFormFieldWidget(
            hintText: "Type your name",
            controller: _nameController,
            focusNode: _nameControllerFocus,
            obscureText: false,
            textInputType: TextInputType.text,
            actionKeyboard: TextInputAction.done,
            functionValidate: commonValidation,
            onSubmitField: () {},
          ),
          SizedBox(height: 40),
          Text(
            "What is your role?",
            style: TextStyle(
                color: Color(0xFF585858),
                fontSize: 21,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15),
          TextFormFieldWidget(
            hintText: "Type your name",
            controller: _nameController,
            focusNode: _nameControllerFocus,
            obscureText: false,
            textInputType: TextInputType.text,
            actionKeyboard: TextInputAction.done,
            functionValidate: commonValidation,
            onSubmitField: () {},
          ),
          SizedBox(height: 40),
          Text(
            "What is your role?",
            style: TextStyle(
                color: Color(0xFF585858),
                fontSize: 21,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15),
          TextFormFieldWidget(
            hintText: "Type your name",
            controller: _nameController,
            focusNode: _nameControllerFocus,
            obscureText: false,
            textInputType: TextInputType.text,
            actionKeyboard: TextInputAction.done,
            functionValidate: commonValidation,
            onSubmitField: () {},
          ),
        ],
      ),
    ),
  ),

  // Fourth Slider
  SingleChildScrollView(
    child: Container(
      // margin: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(
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
            "Type of job post",
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
        ],
      ),
    ),
  ),
];

// Future<dynamic> route() {
//   return navigatorKey.currentState!.pushNamed("homeScreen");
// }

