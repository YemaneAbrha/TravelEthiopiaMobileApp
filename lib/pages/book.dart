// import 'dart:ffi';
//
// import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart' as prefix0;
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:Guzo/pages/common/basicappbar.dart';
//import 'package:datetime_picker_formfield/time_picker_formfield.dart';
import 'package:Guzo/pages/common/buttombarnavigation.dart';

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
  bool _payByOtherPhone;
  List _departureTimes = ["Mornnig", "Afternoon"];
  List _labels = ["From *", "To * ", "Departure Time"];
  List<String> _cities = [
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
    "Keren",
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
  List<DropdownMenuItem<String>> _labelDropDownMenuItem;
  String _departure_city;
  String _destination_city;
  String _departureTime;

  void initState() {
    super.initState();
    _payByOtherPhone = false;
    _citiesdropDownMenuItem = getDropDownMenuItem(_cities);
    _departureTimeDropDownMenuItem = getDropDownMenuItem(_departureTimes);
    _labelDropDownMenuItem = getDropDownMenuItem(_labels);
  }

  List<DropdownMenuItem<String>> getDropDownMenuItem(List _menuItems) {
    List<DropdownMenuItem<String>> items = new List();
    for (String item in _menuItems) {
      items.add(new DropdownMenuItem(
        value: item,
        child: new Text(item),
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar.getAppBar(context),
      body: Container(
          color: Colors.white,
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.fromLTRB(30.0, 70.0, 30.0, 32.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Expanded(
                      child: DropdownButton(
                        hint: new Text(
                          "From *",
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        value: _departure_city,
                        items: _citiesdropDownMenuItem,
                        onChanged: (String value) {
                          setState(() {
                            _departure_city = value;
                          });
                        },
                      ),
                    ),
                    new Flexible(
                      child: new DropdownButton(
                        hint: new Text(
                          "To *",
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        value: _destination_city,
                        items: _citiesdropDownMenuItem,
                        onChanged: (String value) {
                          setState(() {
                            _destination_city = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                DateTimePickerFormField(
                  inputType: InputType.date,
                  format: dateFormat,
                  editable: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.departure_board),
                      labelText: 'Departure Date *',
                      labelStyle: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hasFloatingPlaceholder: false),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Divider(height: 20.0, color: Theme.of(context).primaryColor),
                new Row(
                  children: <Widget>[
                    const Icon(Icons.departure_board),
                    SizedBox(
                      width: 20,
                    ),
                    new DropdownButton(
                      hint: new Text(
                        "Departure Time *",
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                      value: _departureTime,
                      items: _departureTimeDropDownMenuItem,
                      onChanged: (String value) {
                        setState(() {
                          _departureTime = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Divider(height: 20.0, color: Theme.of(context).primaryColor),
                _payByOtherPhone
                    ? TextField(
                        decoration: new InputDecoration(
                            icon: Icon(Icons.phone),
                            labelText: "Phone Number",
                            labelStyle: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        keyboardType: TextInputType.phone,
                        onChanged: (String value) {
                          setState(() {
                            //_titleValue = value;
                          });
                        },
                      )
                    : SwitchListTile(
                        title: const Text(
                          "Pay By Other Phone",
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        value: false,
                        onChanged: (bool value) {
                          setState(() {
                            _payByOtherPhone = true;
                          });
                        },
                        secondary: const Icon(Icons.phone),
                      ),
                SizedBox(
                  height: 20.0,
                ),
                // Divider(height: 30.0, color: Theme.of(context).primaryColor),
                Center(
                  child: MaterialButton(
                    child: Text("Check Availiable Buses",
                        style: new TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        )),
                    shape: StadiumBorder(),
                    height: 45,
                    color: Color.fromRGBO(28, 112, 50, 1.0),
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, '/selectBus');
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
      bottomNavigationBar: Buttom(0),
    );
  }
}
