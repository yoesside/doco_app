import 'package:doco_app/providers/time_provider.dart';
import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:provider/provider.dart';

class SliderButtonOut extends StatefulWidget {
  @override
  _SliderButtonOutState createState() => _SliderButtonOutState();
}

class _SliderButtonOutState extends State<SliderButtonOut> {
  String _text = "Slide to clock Out";

  void confirmed() {
    print("Slide aaa");
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConfirmationSlider(
          width: 373,
          height: 80,
          backgroundColor: grayColorSlide,
          foregroundColor: grayColorForegnSlide,
          text: _text,
          textStyle: GoogleFonts.poppins(
            color: whiteColor,
            fontSize: 18,
          ),
          onConfirmation: () {
            setState(() {
              _text = "Clocked out";
            });
            Provider.of<TimeProvider>(context, listen: false).saveTimeAtPosition(2);
          }),
    );
  }
}
