import 'package:flutter/material.dart';
import 'package:travel_ethiopia/pages/common/basicdrawer.dart';
import 'package:travel_ethiopia/pages/common/buttombarnavigation.dart';

class MyBookingPage extends StatefulWidget {
  _MyBookingPageState createState() => _MyBookingPageState();
}

class _MyBookingPageState extends State<MyBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Travel Ethiopia",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // _select(choices[1]);
            },
          ),
        ],
        backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      // drawer: BasicDrawer(),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        child: Card(
          child: ListView(
            children: <Widget>[
              const ListTile(
                title: Text("Abay Bus"),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  new Text("ID:  "),
                  new Text("ABAY1345YRR55")
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  new Text("From:  "),
                  new Text("Addis Ababa")
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[new Text("TO:  "), new Text("Bahrdar")],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  new Text("Start Date:  "),
                  new Text("Tommorow 5:30 AM")
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  new Text("Arrival Time:  "),
                  new Text("Tommorow 12:00 PM")
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[new Text("Fee:"), new Text("ETB:450")],
              ),
              SizedBox(height: 10.0),
              Center(
                child: FlatButton(
                  child: Text("Report"),
                  onPressed: () {
                    // Render Reporting Page.
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Buttom(1),
    );
  }
}
