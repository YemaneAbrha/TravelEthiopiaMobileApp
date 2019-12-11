import 'package:flutter/material.dart';

class BasicAppBar {
  static getAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "ጉዞ ፥ Ethiopia  ",
        style:
            TextStyle(fontFamily: "Pridi", color: Colors.white, fontSize: 16.0),
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
      backgroundColor: Color.fromRGBO(28, 112, 50, 1.0),
      iconTheme: IconThemeData(color: Colors.white),
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 5.0,
    );
  }
}
