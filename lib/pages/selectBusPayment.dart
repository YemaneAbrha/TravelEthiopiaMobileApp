import 'package:flutter/material.dart';

import 'package:travel_ethiopia/pages/common/basicdrawer.dart';

class SelectBusPage extends StatefulWidget {
  @override
  _SelectBusPageState createState() => _SelectBusPageState();
}

class _SelectBusPageState extends State<SelectBusPage> {
  int selectedbus;
  int selectedpayment;

  @override
  void initState() {
    super.initState();
    selectedbus = 0;
    selectedpayment = 0;
    // _saveCurrentRoute("/HomeScreen");
  }

  setselectedpayment(int value) {
    setState(() {
      selectedpayment = value;
    });
  }

  setsetselectedbus(int value) {
    setState(() {
      selectedbus = value;
    });
  }

  // _saveCurrentRoute(String lastRoute) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   await preferences.setString('LastScreenRoute', lastRoute);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Travel Ethiopia",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber[400],
          iconTheme: IconThemeData(color: Colors.black),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
        ),
        drawer: BasicDrawer(),
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: ListView(
              children: <Widget>[
                Text(
                  "Select One From The Listed Bus",
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    new Radio(
                      value: 1,
                      groupValue: selectedbus,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setsetselectedbus(value);
                      },
                    ),
                    new Text("Abay Bus "),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                      value: 2,
                      groupValue: selectedbus,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setsetselectedbus(value);
                      },
                    ),
                    new Text("Selam Bus "),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                      value: 3,
                      groupValue: selectedbus,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setsetselectedbus(value);
                      },
                    ),
                    new Text("Lemalimo Bus "),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                      value: 4,
                      groupValue: selectedbus,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setsetselectedbus(value);
                      },
                    ),
                    new Text("Golden Bus "),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                      value: 5,
                      groupValue: selectedbus,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setsetselectedbus(value);
                      },
                    ),
                    new Text("Zemen Bus "),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                      value: 6,
                      groupValue: selectedbus,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setsetselectedbus(value);
                      },
                    ),
                    new Text("Ethio Bus "),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                      value: 7,
                      groupValue: selectedbus,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setsetselectedbus(value);
                      },
                    ),
                    new Text("Geda Bus "),
                  ],
                ),
                // Text(
                //   "PayMent Thorough",
                //   style: new TextStyle(
                //       fontSize: 20.0, fontWeight: FontWeight.bold),
                // ),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     new Radio(
                //       value: 1,
                //       groupValue: selectedpayment,
                //       activeColor: Colors.green,
                //       onChanged: (value) {
                //         setselectedpayment(value);
                //       },
                //     ),
                //     new Text("Hello Cash "),
                //   ],
                // ),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     new Radio(
                //       value: 2,
                //       groupValue: selectedpayment,
                //       activeColor: Colors.green,
                //       onChanged: (value) {
                //         setselectedpayment(value);
                //       },
                //     ),
                //     new Text("Amole "),
                //   ],
                // ),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     new Radio(
                //       value: 3,
                //       groupValue: selectedpayment,
                //       activeColor: Colors.green,
                //       onChanged: (value) {
                //         setselectedpayment(value);
                //       },
                //     ),
                //     new Text("CBE Birr "),
                //   ],
                // ),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     new Radio(
                //       value: 4,
                //       groupValue: selectedpayment,
                //       activeColor: Colors.green,
                //       onChanged: (value) {
                //         setselectedpayment(value);
                //       },
                //     ),
                //     new Text("M-Birr "),
                //   ],
                // ),
                Center(
                  child: RaisedButton(
                    child: Text("Submit"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
