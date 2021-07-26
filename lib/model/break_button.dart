import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';

class BreakButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 70,
      color: grayColorSlide,
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Text("Start 1 Hour break",
            style: TextStyle(
              fontSize: 20,
              color: whiteColor,
              fontWeight: FontWeight.w100,
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
