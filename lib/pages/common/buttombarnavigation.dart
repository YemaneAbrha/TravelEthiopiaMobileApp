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
      showElevation: true,
      onItemSelected: (index) => setState(() {
        widget.currentIndex = index;
        if (index == 0) {
          Navigator.pushNamed(context, '/book');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/mybooking');
        } else if (index == 2) {
          Navigator.pushNamed(context, '/');
        } else {
          Navigator.pushNamed(context, '/help');
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
