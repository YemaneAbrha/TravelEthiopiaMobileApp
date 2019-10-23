import 'package:flutter/material.dart';

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
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 150.0, 20.0, 10.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: new InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Full Name *",
                    labelStyle: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
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
                height: 40.0,
              ),
              TextField(
                decoration: new InputDecoration(
                    icon: Icon(Icons.phone),
                    labelText: "Phone Number *",
                    labelStyle: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
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
                height: 40.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(70.0, 0.0, 50.0, 0.0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  minWidth: 150.0,
                  height: 45,
                  color: Color.fromRGBO(0, 136, 204, 0.8),
                  child: new Text(' SUBMIT',
                      style: new TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/allbus');
                  },
                ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
