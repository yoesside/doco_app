import 'package:doco_app/pages/profile_page.dart';
import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BreakButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 373,
      height: 70,
      color: grayColorSlide,
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Text("    Start 1 Hour break          ",
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontSize: 18,
            ),
          ),
          Container(
            child: ElevatedButton(
              child: Text("Start"),
              onPressed: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
              },
              style: ElevatedButton.styleFrom(
                primary: grayColorForegnSlide,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10,),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0))
                )
              )
            ),
          )
        ],
      ),
    );
  }
}
