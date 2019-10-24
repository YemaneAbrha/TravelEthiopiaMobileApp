import 'package:flutter/material.dart';

class PastBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListView(
        children: <Widget>[
          const ListTile(
            title: Text("Abay Bus"),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[new Text("ID:  "), new Text("ABAY1345YRR55")],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[new Text("From:  "), new Text("Addis Ababa")],
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
    );
  }
}
