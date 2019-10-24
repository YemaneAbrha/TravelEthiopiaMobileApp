import 'package:flutter/material.dart';

import 'package:travel_ethiopia/pages/registration.dart';
import 'package:travel_ethiopia/pages/book.dart';
import 'package:travel_ethiopia/pages/selectBusPayment.dart';
import 'package:travel_ethiopia/pages/homePage.dart';
import 'package:travel_ethiopia/pages/myBooking.dart';
import 'package:travel_ethiopia/pages/help.dart';
import 'package:travel_ethiopia/pages/privacy.dart';
import 'package:travel_ethiopia/pages/profile.dart';
import 'package:travel_ethiopia/pages/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(fontFamily: 'DancingScript'),
      routes: <String, WidgetBuilder>{
        "/mybooking": (BuildContext context) => MyBookingPage(),
        "/selectBus": (BuildContext context) => SelectBusPage(),
        "/book": (BuildContext context) => Book(context),
        "/help": (BuildContext context) => HelpPage(context),
        "/privacy": (BuildContext context) => PrivacyPage(context),
        '/profile': (BuildContext context) => UserProfile(context),
        '/allbus': (BuildContext context) => HomeScreen(context),
        '/register': (BuildContext context) => RegistrationPage(context),

        //  "/allbus": (BuildContext context) => AllBus(),
      },
      // theme: ThemeData(fontFamily: 'Raleway'),
      home: SplashScreenPage(context),
    );
  }
}
