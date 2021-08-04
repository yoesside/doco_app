import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:doco_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';


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
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset("assets/images/icon_back.png",
                    width: 40,
                    height: 40,
                  ),
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
                  child: Image.asset("assets/images/Profile2.png",
                    width: 70,
                    height: 70,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                   Text("user@taksuteknologi.com",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: whiteColor,
                      ),
                    ),
                  Text("Yoshino Nanjo",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: cyanDarkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
            SizedBox(
              height: 210,
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
                      builder: (context) => LoginPage(),
                    ));
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
