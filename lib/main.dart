import 'package:flutter/material.dart';

import 'package:Guzo/app/screen/pages/auth/registration.dart';
import 'package:Guzo/app/screen/pages/book/book.dart';
import 'package:Guzo/app/screen/pages/book/selectBusPayment.dart';
import 'package:Guzo/app/screen/pages/book/homePage.dart';
import 'package:Guzo/app/screen/pages/book/myBooking.dart';
import 'package:Guzo/app/screen/pages/user/help.dart';
import 'package:Guzo/app/screen/pages/user/privacy.dart';
import 'package:Guzo/app/screen/pages/user/profile.dart';
import 'package:Guzo/home/splashScreen.dart';
import 'package:Guzo/app/screen/pages/book/bookingConfirmation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      },
      // theme: ThemeData(fontFamily: 'Raleway'),
      home: SplashScreenPage(context),
    );
  }
}
