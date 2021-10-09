import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFAED),
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
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 35),
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
        SizedBox(
          height: 12,
        ),
        phoneFiled(),
        SizedBox(
          height: 10,
        ),
        Row(children: <Widget>[
          Container(
            width: 28,
            height: 100,
            child: Icon(
              Icons.info,
              size: 16,
            ),
          ),
          Text("I agree with the terms and conditions"),
        ]),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () => , child: Text())
      ],
    );
  }

  Widget smallText() {
    return Text("Enter your mobile no.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,fontStyle: FontStyle.normal),);
  }

  Widget phoneFiled(){
    return Row(
      children: <Widget>[
        
      ]
    );
  }
}
