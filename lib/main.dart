import 'package:flutter/material.dart';

import 'package:Guzo/pages/registration.dart';

import 'package:Guzo/pages/book.dart';
import 'package:Guzo/pages/selectBusPayment.dart';
import 'package:Guzo/pages/homePage.dart';
import 'package:Guzo/pages/myBooking.dart';
import 'package:Guzo/pages/help.dart';
import 'package:Guzo/pages/privacy.dart';
import 'package:Guzo/pages/profile.dart';
import 'package:Guzo/pages/splashScreen.dart';
import 'package:Guzo/pages/bookingConfirmation.dart';

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
        '/bookingConfirmation': (BuildContext context) =>
            BookingConfirmationPage(context),

        //  "/allbus": (BuildContext context) => AllBus(),
      },
      // theme: ThemeData(fontFamily: 'Raleway'),
      home: SplashScreenPage(context),
    );
  }
}
