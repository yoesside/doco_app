import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:slide_to_act/slide_to_act.dart';


class DashboardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: SafeArea(
        child: Column(
          children: [
            ConfirmationSlider(
              onConfirmation: (){})
          ],
        ),
      ),
    );
  }
}