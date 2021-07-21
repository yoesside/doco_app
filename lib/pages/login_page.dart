import 'package:doco_app/pages/dashboard_page.dart';
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
      backgroundColor: darkColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 50,
            right: 50,
          ),
          child: Column(children: [
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
            Text(
              "Taksu Tech",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: Container(
                child: Image.asset(
                  "assets/images/logo_taksu.png",
                  width: 236,
                  height: 68,
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Center(
              child: Container(
                width: 267,
                height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: cyanDarkColor,
                  ),
                  child: Text(
                    "Login with google",
                    style: TextStyle(
                      fontSize: 18,
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
