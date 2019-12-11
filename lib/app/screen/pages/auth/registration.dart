import 'package:flutter/material.dart';
import 'package:Guzo/app/functions/api/requestAuthAPI.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage(BuildContext context);
  _RegistrtionPageState createState() => _RegistrtionPageState();
}

class _RegistrtionPageState extends State<RegistrationPage> {
  String _fullName, _phoneNumber;
  bool _isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "ጉዞ ፥ ኢትዮጵያ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(28, 112, 50, 1.0),
        // backgroundColor: Color.fromRGBO(91, 91, 92, 1.0),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 150.0, 20.0, 10.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
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
                    _fullName = value;
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
                    _phoneNumber = value;
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
                  color: Color.fromRGBO(
                    28,
                    112,
                    50,
                    1.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      _isloading
                          ? new CircularProgressIndicator(
                              valueColor:
                                  new AlwaysStoppedAnimation(Colors.white),
                              strokeWidth: 3.0,
                            )
                          : new SizedBox(
                              width: 40.0,
                            ),
                      new SizedBox(
                        width: 40.0,
                      ),
                      new Center(
                        child: new Text(' SUBMIT',
                            style: new TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  onPressed: () {
                    Map<String, dynamic> body = {
                      'name': _fullName,
                      'password': "kendelyemane",
                      'phonenumber': _phoneNumber,
                    };
                    setState(() {
                      _isloading = true;
                    });
                    print("I have sent the request ....");
                    requestSignup(context, body);
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
