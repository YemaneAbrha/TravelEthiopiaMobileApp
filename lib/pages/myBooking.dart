import 'package:flutter/material.dart';
import 'package:Guzo/pages/pastBooking.dart';
import 'package:Guzo/pages/upcommingBooking.dart';
import 'package:Guzo/pages/common/buttombarnavigation.dart';

class MyBookingPage extends StatefulWidget {
  _MyBookingPageState createState() => _MyBookingPageState();
}

class _MyBookingPageState extends State<MyBookingPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ጉዞ ፥ Ethiopia  ',
            style: TextStyle(
                fontFamily: "Pridi", color: Colors.white, fontSize: 16.0),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
            ),
          ],
          // backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
          backgroundColor: Color.fromRGBO(91, 91, 92, 1.0),

          iconTheme: IconThemeData(color: Colors.white),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.card_travel,
                  color: Colors.black,
                ),
                text: 'Up Comming',
              ),
              Tab(
                icon: Icon(
                  Icons.history,
                  color: Colors.black,
                ),
                text: 'Past Booking',
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
        body: TabBarView(
          children: <Widget>[
            UpcommingBookingPage(),
            PastBookingPage(),
          ],
        ),
        bottomNavigationBar: Buttom(1),
      ),
    );
  }
}
