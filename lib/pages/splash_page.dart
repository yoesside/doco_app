import 'package:flutter/material.dart';

import 'package:doco_app/theme.dart';

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
                  margin: const EdgeInsets.only(
                    top: 100,
                  ),
                  child: Text("Get your attendance with Doco",
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 20,
                    ),
                  )
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iaculis arcu gravida bibendum mauris volutpat.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Center(
              child: Image.asset("assets/images/splashimage.png",
                width: 250,
              )
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  // LoginPage();
                });
              },
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cyanDarkColor,
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Get started", style: TextStyle(
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
