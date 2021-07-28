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
          Text("Start 1 Hour break",
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontSize: 18,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            width: 103,
            height: 56,
          )
        ],
      ),
    );
  }
}
