import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class SliderButtonIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConfirmationSlider(
        width: 338,
        height: 80,
        backgroundColor: grayColorSlide,
        foregroundColor: grayColorForegnSlide,
        text: "Slide to clock in",
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: whiteColor,
        ),
        onConfirmation: (){}
        ),
    );
  }
}
