import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: SafeArea(
        child: Text("Dashboard"),
      ),
    );
  }
}