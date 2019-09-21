import 'package:flutter/material.dart';

import 'package:travel_ethiopia/pages/common/basicdrawer.dart';
import 'package:travel_ethiopia/pages/common/buttombarnavigation.dart';

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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // _select(choices[1]);
            },
          ),
        ],
        backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      drawer: BasicDrawer(),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              Text(
                "Select One From The Listed Bus",
                style:
                    new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
              Center(
                child: RaisedButton(
                  child: Text("Submit"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Buttom(0),
    );
  }
}
