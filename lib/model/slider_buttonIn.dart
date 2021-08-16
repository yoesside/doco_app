import 'package:doco_app/providers/time_provider.dart';
import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class SliderButtonIn extends StatefulWidget {

  @override
  _SliderButtonInState createState() => _SliderButtonInState();
}

class _SliderButtonInState extends State<SliderButtonIn> {
  String _text = "Slide to clock in";

  void confirmed(){
    print("Slider confirmed");
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
        onConfirmation: (){
          setState(() {
            _text = "Clocked in";
          });

        Provider.of<TimeProvider>(context, listen: false).saveTimeAtPosition(0);
        }
      ),
    );
  }
}
