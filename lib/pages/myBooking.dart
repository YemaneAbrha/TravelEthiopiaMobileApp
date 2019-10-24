import 'package:flutter/material.dart';
import 'package:travel_ethiopia/pages/pastBooking.dart';
import 'package:travel_ethiopia/pages/upcommingBooking.dart';
import 'package:travel_ethiopia/pages/common/buttombarnavigation.dart';

class MyBookingPage extends StatefulWidget {
  // String busName;
  // String bookId;
  // String from;
  // String to;
  // String departureTime;
  // String departureDate;
  // double price;
  // String status;
  // MyBookingPage(Map<String, dynamic> myBooking) {
  // busName = myBooking['busName'];
  // bookId = myBooking['bookId'];
  // from = myBooking['from'];
  // to = myBooking['to'];
  // departureTime = myBooking['departureTime'];
  // departureDate = myBooking['departureDate'];
  // price = myBooking['price'];
  // status = myBooking['status'];
  //}
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
                // Navigator.pushNamed(context, 'profile');
                Navigator.pushReplacementNamed(context, '/profile');
              },
            ),
          ],
          backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
          iconTheme: IconThemeData(color: Colors.black),
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
