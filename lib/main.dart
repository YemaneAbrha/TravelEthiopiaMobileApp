import 'package:flutter/material.dart';

import 'package:travel_ethiopia/pages/book.dart';
import 'package:travel_ethiopia/pages/selectBusPayment.dart';
import 'package:travel_ethiopia/pages/homePage.dart';
import 'package:travel_ethiopia/pages/myBooking.dart';
import 'package:travel_ethiopia/pages/help.dart';
import 'package:travel_ethiopia/pages/privacy.dart';
import 'package:travel_ethiopia/pages/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Ethiopia',
      routes: <String, WidgetBuilder>{
        "/mybooking": (BuildContext context) => MyBookingPage(),
        "/selectBus": (BuildContext context) => SelectBusPage(),
        "/book": (BuildContext context) => Book(context),
        "/help": (BuildContext context) => HelpPage(context),
        "/privacy": (BuildContext context) => PrivacyPage(context),
        '/profile': (BuildContext context) => UserProfile(context),
        //  "/LoginScreen": (BuildContext context) => LoginScreen(),
      },
      home: HomeScreen(context),
    );
  }
}
