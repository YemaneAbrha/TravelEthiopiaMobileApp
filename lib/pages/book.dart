import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:travel_ethiopia/pages/common/basicappbar.dart';
//import 'package:datetime_picker_formfield/time_picker_formfield.dart';
import 'package:travel_ethiopia/pages/common/buttombarnavigation.dart';

class Book extends StatefulWidget {
  //final dateFormat = DateFormat();
  Book(BuildContext context);
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy");
  final timeFormat = DateFormat("h:mm a");
  DateTime date;
  TimeOfDay time;
  bool _payByOtherPhone = false;
  @override
  void initState() {
    super.initState();
    // _saveCurrentRoute("/HomeScreen");
  }

  // _saveCurrentRoute(String lastRoute) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   await preferences.setString('LastScreenRoute', lastRoute);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar.getAppBar(context),
      // drawer: BasicDrawer(),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 32.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              new Row(
                children: <Widget>[
                  new Flexible(
                    child: new TextField(
                      decoration: new InputDecoration(
                          icon: Icon(Icons.trip_origin),
                          labelText: " From *",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      keyboardType: TextInputType.text,
                      onChanged: (String value) {
                        setState(() {
                          //_titleValue = value;
                        });
                      },
                    ),
                  ),
                  new SizedBox(
                    width: 20.0,
                  ),
                  new Flexible(
                    child: new TextField(
                      decoration: new InputDecoration(
                          // icon: Icon(Icons.trip_origin),
                          labelText: "To * ",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      keyboardType: TextInputType.text,
                      onChanged: (String value) {
                        setState(() {
                          //_titleValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              DateTimePickerFormField(
                inputType: InputType.date,
                format: dateFormat,
                editable: false,
                //enabled: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.departure_board),
                    labelText: 'Departure Date *',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hasFloatingPlaceholder: false),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.departure_board),
                  labelText: 'Departure Time *',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              _payByOtherPhone
                  ? TextField(
                      decoration: new InputDecoration(
                          icon: Icon(Icons.phone),
                          labelText: "Phone Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      keyboardType: TextInputType.text,
                      onChanged: (String value) {
                        setState(() {
                          //_titleValue = value;
                        });
                      },
                    )
                  : SwitchListTile(
                      title: const Text("Pay by other phone"),
                      value: false,
                      onChanged: (bool value) {
                        setState(() {
                          _payByOtherPhone = true;
                        });
                      },
                      secondary: const Icon(Icons.phone),
                    ),
              SizedBox(
                height: 16.0,
              ),
              Center(
                child: RaisedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, '/selectBus');
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Buttom(0),
    );
  }
}
