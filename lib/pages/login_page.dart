import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          "Login",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: cyanDarkColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Taksu Tech",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: whiteColor,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            child: Image.asset("assets/images/logo_taksu.png",
              width: 236,
              height: 68,
            ),
          ),
        ),
      ]),
    );
  }
}
