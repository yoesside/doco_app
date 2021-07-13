import 'package:flutter/material.dart';
import 'package:doco_app/pages/splash_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Nunito"
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(

          child: Center(
            child: SplashPage(),
          ),
        )
      )
    );
  }
}


