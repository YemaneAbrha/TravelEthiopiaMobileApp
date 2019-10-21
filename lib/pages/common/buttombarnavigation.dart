import 'package:flutter/material.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Buttom extends StatefulWidget {
  int currentIndex;
  Buttom(this.currentIndex);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ButtonState();
  }
}

class ButtonState extends State<Buttom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: widget.currentIndex,
      showElevation: false,
      onItemSelected: (index) => setState(() {
        widget.currentIndex = index;
        if (index == 0) {
          Navigator.pushReplacementNamed(context, '/book');
        } else if (index == 1) {
          Navigator.pushReplacementNamed(context, '/mybooking');
        } else if (index == 2) {
          Navigator.pushReplacementNamed(context, '/allbus');
        } else {
          Navigator.pushReplacementNamed(context, '/help');
        }
      }),
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.blue,
        ),
        BottomNavyBarItem(
            icon: Icon(Icons.card_travel),
            title: Text('My Booking'),
            activeColor: Colors.blue),
        BottomNavyBarItem(
            icon: Icon(Icons.subway),
            title: Text('All Bus'),
            activeColor: Colors.blue),
        BottomNavyBarItem(
            icon: Icon(Icons.history),
            title: Text('History'),
            activeColor: Colors.blue),
      ],
    );
  }
}
