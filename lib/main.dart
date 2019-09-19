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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        brightness: Brightness.light,
        //accentColor: Colors.amberAccent[400],
        //primarySwatch: Colors.deepOrange,
        // primarySwatch: Colors.amberAccent[400],
      ),
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
    // home: Navigator.push(context, '/HomeScreen'));
  }
}
