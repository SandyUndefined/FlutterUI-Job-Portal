import 'package:Flutter_Job_Portal/screens/usersProfile.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:Flutter_Job_Portal/widgets/textField.dart';
import 'package:flutter/material.dart';

class WrongOTP extends StatefulWidget {
  const WrongOTP({Key? key}) : super(key: key);

  @override
  _WrongOTPState createState() => _WrongOTPState();
}

class _WrongOTPState extends State<WrongOTP> {
  final _phoneController = TextEditingController();
  FocusNode _phoneControllerFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Image.asset(
                  "assets/images/phone.png",
                  height: 165,
                  width: 220,
                ),
              ),
              SizedBox(height: 65),
              Text(
                "Verification",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Color(0xFF55524C)),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.only(left: 35, right: 40),
                child: _formWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _formWidget() {
    return Column(
      children: <Widget>[
        smallText(),
        SizedBox(height: 14),
        phoneField(),
        // SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 12),
          child: Row(children: <Widget>[
            Text(
              "Wrong OTP entered.",
              style: TextStyle(
                  color: Colors.red[300],
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(width: 5),
            Text(
              "Resend OTP",
              style: TextStyle(
                  color: Color(0xFF898E8A),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ]),
        ),
        SizedBox(height: 20),
        ButtonWidget(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => UserProfile())),
          child: const Text('Verify'),
        )
      ],
    );
  }

  Widget smallText() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Enter the OTP sent to phone no.\n +9999999999",
        style: TextStyle(
            color: Color(0xFF878787),
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontStyle: FontStyle.normal),
      ),
    );
  }

  Widget phoneField() {
    return TextFormFieldWidget(
      hintText: "Enter OTP",
      obscureText: false,
      textInputType: TextInputType.number,
      actionKeyboard: TextInputAction.done,
      functionValidate: commonValidation,
      controller: _phoneController,
      focusNode: _phoneControllerFocus,
      onSubmitField: () {},
    );
  }
}
