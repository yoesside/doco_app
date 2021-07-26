import 'package:flutter/material.dart';

import 'package:doco_app/theme.dart';
import 'package:doco_app/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                    top: 100,
                  ),
                  child: Text(
                    "Get your attention with Taksu",
                    style: TextStyle(
                      color: cyanDarkColor,
                      fontSize: 20,
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(32),
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iaculis arcu gravida bibendum mauris volutpat.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          )),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Center(
                child: Image.asset(
              "assets/images/splashimage.png",
              width: 250,
            )),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                primary: grayColor,
              ),
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: grayColor,
                ),
                child: Center(
                    child: Text("Get started",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
