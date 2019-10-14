import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'package:travel_ethiopia/pages/registration.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage(BuildContext context);
  @override
  _SplashScreenPage createState() => new _SplashScreenPage();
}

class _SplashScreenPage extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new RegistrationPage(context),
      // title: new Text(
      //   ' ጉዞ ',
      //   style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
      // ),
      image: new Image.asset('assets/images/Guzo.png'),
      gradientBackground: new LinearGradient(
        colors: [Colors.cyan, Colors.black54],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      //backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 210.0,

      onClick: () => print(""),
      loaderColor: Colors.green,
    );
  }
}
