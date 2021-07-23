import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class SliderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: ConfirmationSlider(
        // height: 80,
        // width: 338,
        onConfirmation: () {}),
    ));
  }
}
