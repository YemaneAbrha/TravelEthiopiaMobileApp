import 'package:flutter/material.dart';

class BasicAppBar {
  static getAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "ጉዞ ፥ ኢትዮጵያ",
        style: TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            // Navigator.pushNamed(context, 'profile');
            Navigator.pushNamed(context, '/profile');
          },
        ),
      ],
      backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
      iconTheme: IconThemeData(color: Colors.black),
      // elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
    );
  }
}
