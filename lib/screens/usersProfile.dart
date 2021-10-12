import 'dart:ui';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:Flutter_Job_Portal/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

int _current = 0;
int index = 4;
int count = 0;
TextEditingController _nameController = TextEditingController();
FocusNode _nameControllerFocus = FocusNode();

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
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
            ButtonWidget(onPressed: () {}, child: Text("Next"))
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
        ],
      ),
    ),
  ),
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
  SingleChildScrollView(
    child: Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
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
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Text(
              "Type of job post",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  fontStyle: FontStyle.normal,
                  color: Color(0xFF585858)),
            ),
          ),
          SizedBox(height: 25),
          CustomRadioButton(
            horizontal: true,
            unSelectedColor: colorRed,
            buttonLables: [
              'Marketing',
              'Logistics',
              'Finance',
              'Human Resource',
              '+ custom'
            ],
            buttonValues: ["STUDENT", "PARENT", "TEACHER", 'hgfh', 'jhgiugx'],
            defaultSelected: "STUDENT",
            radioButtonValue: (value) {
              print(value);
            },
            selectedColor: colorPrimary,
          ),
        ],
      ),
    ),
  ),
  Container(
    margin: EdgeInsets.only(left: 25.0, right: 25.0),
    child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Image.asset(
          "assets/images/done.png",
          height: 170,
          width: 230,
        ),
      ),
      SizedBox(height: 40),
      Text("Hurrey!",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              color: colorPrimary)),
      SizedBox(height: 15),
      Text(
          "Your registration is done successfully. \n   Your company’s unique code is",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Color(0xFF898E8A))),
      SizedBox(height: 15),
      Text("473XYZ54",
          style: TextStyle(
              fontSize: 22,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              color: Color(0xFF55524C)))
    ]),
  ),
];

// final List<Widget> imageSliders = imgList
//     .map((item) => Container(
//           child: Container(
//             margin: EdgeInsets.all(5.0),
//             child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                 child: Stack(
//                   children: <Widget>[
//                     Image.network(item, fit: BoxFit.cover, width: 1000.0),
//                     Positioned(
//                       bottom: 0.0,
//                       left: 0.0,
//                       right: 0.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [
//                               Color.fromARGB(200, 0, 0, 0),
//                               Color.fromARGB(0, 0, 0, 0)
//                             ],
//                             begin: Alignment.bottomCenter,
//                             end: Alignment.topCenter,
//                           ),
//                         ),
//                         padding: EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20.0),
//                         child: Text(
//                           'No. ${imgList.indexOf(item)} image',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )),
//           ),
//         ))
//     .toList();
