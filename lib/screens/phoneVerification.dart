import 'package:Flutter_Job_Portal/screens/otpVerification.dart';
import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:Flutter_Job_Portal/widgets/textField.dart';
import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
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
                "Sign in with Happzee",
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
        Row(children: <Widget>[
          Container(
            width: 28,
            height: 40,
            child: Icon(
              Icons.info_outline,
              size: 16,
              color: Color(0xFF898E8A),
            ),
          ),
          Text(
            "I agree with the terms and conditions",
            style: TextStyle(color: Color(0xFF898E8A)),
          ),
        ]),
        SizedBox(height: 20),
        ButtonWidget(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => OtpVerify())),
          child: const Text('Send OTP'),
        )
      ],
    );
  }

  Widget smallText() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Enter your mobile no.",
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
      hintText: "Mobile No.",
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
