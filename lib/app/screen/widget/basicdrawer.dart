import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
//import 'package:flutter/services.dart';
//import 'package:splash_tokenauth/common/apifunctions/requestLogoutAPI.dart';

class BasicDrawer extends StatefulWidget {
  @override
  _BasicDrawerState createState() => _BasicDrawerState();
}

class _BasicDrawerState extends State<BasicDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: new UserAccountsDrawerHeader(
                accountName: Text(
                  "YemaneAbrha",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    // fontStyle: FontStyle.italic
                  ),
                ),
                accountEmail: Text(
                  "yemaneabrha21@gmail.com",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
                currentAccountPicture: new CircleAvatar(
                  child: new Text("YA"),
                ),
                decoration: BoxDecoration(),
              ),
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              padding: const EdgeInsets.all(10.0),
            ),
            ListTile(
              leading: Icon(Icons.subway),
              title: Text(
                "My Booking",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/mybooking');
              },
            ),
            ListTile(
              leading: Icon(Icons.card_travel),
              title: Text(
                "Buy Ticket",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/book');
              },
            ),
            ListTile(
              leading: Icon(Icons.subtitles),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text(
                "Help",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/help');
              },
            ),
            ListTile(
              leading: Icon(Icons.priority_high),
              title: Text(
                "Privacy",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/privacy');
              },
            ),
          ],
        ),
      ),
    );
  }
}
