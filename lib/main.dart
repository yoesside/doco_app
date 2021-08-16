import 'package:doco_app/providers/time_provider.dart';
import 'package:flutter/material.dart';
import 'package:doco_app/pages/splash_page.dart';
import 'package:doco_app/theme.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (ctx) => TimeProvider(),
        child: Consumer<TimeProvider>(
            builder: (ctx, notifier, child) => MaterialApp(
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
            ),
        )
    );
  }
}

