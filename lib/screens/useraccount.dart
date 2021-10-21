import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:Flutter_Job_Portal/widgets/button.dart';
import 'package:Flutter_Job_Portal/widgets/textField.dart';
import 'package:flutter/material.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  _UserAccountState createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBackground,
        leading: InkWell(
          onTap: () => print("this is working"),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset("assets/images/back.png"),
          ),
        ),
        title: Text(
          "Account",
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
              onTap: () {},
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
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Image.asset(
                  "assets/images/profile.png",
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                TextFormFieldWidget(hintText: "Name"),
                // ButtonWidget(onPressed: () {}, child: Text("Done"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
