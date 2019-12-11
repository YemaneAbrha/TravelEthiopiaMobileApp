import 'package:flutter/material.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Buttom extends StatefulWidget {
  int currentIndex;
  Buttom(this.currentIndex);
  @override
  State<StatefulWidget> createState() {
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
        } else {
          Navigator.pushReplacementNamed(context, '/allbus');
        }
      }),
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('HOME'),
          activeColor: Color.fromRGBO(28, 112, 50, 1.0),
        ),
        BottomNavyBarItem(
            icon: Icon(Icons.card_travel),
            title: Text('MY BOOKING'),
            activeColor: Color.fromRGBO(28, 112, 50, 1.0)),
        BottomNavyBarItem(
            icon: Icon(Icons.subway),
            title: Text('ALL BUS'),
            activeColor: Color.fromRGBO(28, 112, 50, 1.0)),
      ],
    );
  }
}
