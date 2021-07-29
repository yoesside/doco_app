import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class SliderButtonOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
       child: ConfirmationSlider(
        width: 373,
        height: 80,
        backgroundColor: grayColorSlide,
        foregroundColor: grayColorForegnSlide,
        text: "Slide to clock Out",
        textStyle: GoogleFonts.poppins(
          color: whiteColor,
          fontSize: 18,
        ),
        // textStyle: TextStyle(
        //   fontWeight: FontWeight.bold,
        //   fontSize: 18,
        //   color: whiteColor,
        // ),
        onConfirmation: (){}
        ),
    );
  }
}