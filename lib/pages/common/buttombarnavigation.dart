import 'package:flutter/material.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Buttom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ButtonState();
  }
}

class ButtonState extends State<Buttom> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: currentIndex,
      showElevation: true,
      onItemSelected: (index) => setState(() {
        currentIndex = index;
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
