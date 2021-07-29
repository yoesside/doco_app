import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/icon_back.png",
                  width: 40,
                  height: 40,
                ),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 37,
                  ),
                  child: Image.asset("assets/images/Profile.png",
                    width: 90,
                    height: 90,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 130,
            ),
            Center(
              child: Container(
                width: 267,
                height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    primary: grayColorSlide,
                  ),
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      fontSize: 18,
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      )),
    );
  }
}
