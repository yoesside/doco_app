import 'package:doco_app/providers/time_provider.dart';
import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class BreakButton extends StatelessWidget {
  @override
  String _text = "Slide to clock in";
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
                Provider.of<TimeProvider>(context, listen: false).saveTimeAtPosition(1);
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
