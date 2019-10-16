import 'package:flutter/material.dart';

import 'package:travel_ethiopia/pages/common/basicappbar.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage(BuildContext context);
  _RegistrtionPageState createState() => _RegistrtionPageState();
}

class _RegistrtionPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "ጉዞ ፥ ኢትዮጵያ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 10.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: new InputDecoration(
                    labelText: "Full Name *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                keyboardType: TextInputType.text,
                onChanged: (String value) {
                  setState(() {
                    //_FullNameValue = value;
                  });
                },
              ),
              SizedBox(
                height: 25.0,
              ),
              TextField(
                decoration: new InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                keyboardType: TextInputType.phone,
                onChanged: (String value) {
                  setState(() {
                    //_PhoneNumberValue = value;
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                child: Material(
                  //Wrap with Material
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 18.0,
                  color: Colors.lightGreen[800],
                  clipBehavior: Clip.antiAliasWithSaveLayer, // Add This
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 35,
                    color: Colors.lightGreen[800],
                    child: new Text(' SUBMIT',
                        style:
                            new TextStyle(fontSize: 16.0, color: Colors.white)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/allbus');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
