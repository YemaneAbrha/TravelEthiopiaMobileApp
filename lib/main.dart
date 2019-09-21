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

      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      // theme: new ThemeData(
      //     primaryColor: Color.fromRGBO(58, 66, 86, 1.0), fontFamily: 'Raleway'),

      //accentColor: Colors.amberAccent[400],
      //primarySwatch: Colors.deepOrange,
      // primarySwatch: Colors.amberAccent[400],

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
// import 'package:flutter/material.dart';

// // import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:travel_ethiopia/pages/common/buttombarnavigation.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//         ),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//       bottomNavigationBar: Buttom(),
//     );
//   }
// }
