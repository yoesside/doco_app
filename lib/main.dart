import 'package:flutter/material.dart';
import 'package:doco_app/pages/splash_page.dart';
import 'package:doco_app/theme.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
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
        backgroundColor: darkColor,
        body: Container(
          child: Center(
            child: SplashPage(),
          ),
        )
      )
    );
  }
}


