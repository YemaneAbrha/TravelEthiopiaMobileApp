import 'dart:ffi';
import 'package:dropdownfield/dropdownfield.dart';

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
  List _departureTimes = ["Mornnig", "Afternoon"];
  List _cities = [
    "Addis Ababa",
    "Bahrdar",
    "Awassa",
    "Gonder",
    "Mekelle",
    "Dilla",
    "Ambo",
    "Assosa",
    "Semera",
    "Asmera",
    "Alamata",
    "Shire",
    "Axum",
    "Lalibela",
    "Debre-Markos",
    "Welayta",
    "Wollega",
    "Humera",
    "Dessie",
    "Woldya",
    "Nakfa",
  ];
  List<DropdownMenuItem<String>> _citiesdropDownMenuItem;
  List<DropdownMenuItem<String>> _departureTimeDropDownMenuItem;
  String _departure_city;
  String _destination_city;
  String _departureTime;
  void initState() {
    super.initState();
    _citiesdropDownMenuItem = getcitiesDropDownMenuItem();
    _departureTimeDropDownMenuItem = getdepartureTimeDropDownMenuItem();
    _departure_city = _citiesdropDownMenuItem[0].value;
    _destination_city = _citiesdropDownMenuItem[9].value;
    _departureTime = _departureTimeDropDownMenuItem[0].value;
  }

  List<DropdownMenuItem<String>> getcitiesDropDownMenuItem() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      items.add(new DropdownMenuItem(
        value: city,
        child: new Text(city),
      ));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getdepartureTimeDropDownMenuItem() {
    List<DropdownMenuItem<String>> items = new List();
    for (String departureTime in _departureTimes) {
      items.add(new DropdownMenuItem(
        value: departureTime,
        child: new Text(departureTime),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar.getAppBar(context),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0, 50.0, 30.0, 32.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              new Row(
                children: <Widget>[
                  // new ListView(
                  //   children: <Widget>[
                  const Icon(
                    Icons.flight,
                  ),
                  new SizedBox(
                    width: 5,
                  ),
                  new Text("From: "),
                  new SizedBox(
                    width: 5,
                  ),
                  new DropdownButton(
                    value: _departure_city,
                    items: _citiesdropDownMenuItem,
                    onChanged: (String value) {
                      setState(() {
                        _departure_city = value;
                      });
                    },
                  ),
                  new SizedBox(
                    width: 15.0,
                  ),
                  new Text("TO:"),
                  new SizedBox(
                    width: 10.0,
                  ),
                  new DropdownButton(
                    value: _destination_city,
                    items: _citiesdropDownMenuItem,
                    onChanged: (String value) {
                      setState(() {
                        _destination_city = value;
                      });
                    },
                  ),
                ],
              ),
              //   ],
              // ),
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
              // TextField(
              //   decoration: InputDecoration(
              //     icon: Icon(Icons.departure_board),
              //     labelText: 'Departure Time *',
              //     border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10.0)),
              //   ),
              // ),
              new DropdownButton(
                value: _departureTime,
                items: _departureTimeDropDownMenuItem,
                onChanged: (String value) {
                  setState(() {
                    _departureTime = value;
                  });
                },
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
                      title: const Text("Pay By Other Phone"),
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
                  child: Text("Check Availiablity"),
                  color: Color.fromRGBO(0, 136, 204, 0.8),
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
