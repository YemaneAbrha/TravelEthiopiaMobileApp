import 'dart:ffi';

import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
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
  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> formData;
  List<String> cities = [
    'Bangalore',
    'Chennai',
    'New York',
    'Mumbai',
    'Delhi',
    'Tokyo',
  ];
  List<String> countries = [
    'INDIA',
    'USA',
    'JAPAN',
  ];

  _BookState() {
    formData = {
      'City': 'Bangalore',
      'Country': 'INDIA',
    };
  }

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
      //backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      backgroundColor: Colors.white,
      //   body: Container(
      //     padding: EdgeInsets.fromLTRB(10.0, 50.0, 30.0, 32.0),
      //     child: Center(
      //       child: ListView(
      //         children: <Widget>[
      //           SizedBox(
      //             height: 10.0,
      //           ),
      //           new Row(
      //             children: <Widget>[
      //               // new ListView(
      //               //   children: <Widget>[
      //               const Icon(
      //                 Icons.flight,
      //               ),
      //               new SizedBox(
      //                 width: 15,
      //               ),

      //               new DropdownButton(
      //                 hint: new Text("FROME *"),
      //                 value: _departure_city,
      //                 items: _citiesdropDownMenuItem,
      //                 onChanged: (String value) {
      //                   setState(() {
      //                     _departure_city = value;
      //                   });
      //                 },
      //               ),
      //               new SizedBox(
      //                 width: 20.0,
      //               ),

      //               new DropdownButton(
      //                 value: _destination_city,
      //                 hint: new Text("TO *"),
      //                 items: _citiesdropDownMenuItem,
      //                 onChanged: (String value) {
      //                   setState(() {
      //                     _destination_city = value;
      //                   });
      //                 },
      //               ),
      //               new Form(
      //                 key: _formKey,
      //                 autovalidate: false,
      //                 child: prefix0.SingleChildScrollView(
      //                   child: Column(
      //                     children: <Widget>[
      //                       Divider(
      //                           height: 10.0,
      //                           color: Theme.of(context).primaryColor),
      //                       DropDownField(
      //                           value: formData['City'],
      //                           icon: Icon(Icons.location_city),
      //                           required: true,
      //                           hintText: 'Choose a city',
      //                           labelText: 'City *',
      //                           items: cities,
      //                           strict: false,
      //                           setter: (dynamic newValue) {
      //                             formData['City'] = newValue;
      //                           }),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           //   ],
      //           // ),
      //           SizedBox(
      //             height: 16.0,
      //           ),
      //           DateTimePickerFormField(
      //             inputType: InputType.date,
      //             format: dateFormat,
      //             editable: false,
      //             //enabled: false,
      //             decoration: InputDecoration(
      //                 icon: Icon(Icons.departure_board),
      //                 labelText: 'Departure Date *',
      //                 border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(10.0)),
      //                 hasFloatingPlaceholder: false),
      //           ),
      //           SizedBox(height: 16.0),

      // new Row(
      //   children: <Widget>[
      //     const Icon(Icons.departure_board),
      //     SizedBox(
      //       width: 20,
      //     ),
      //     new DropdownButton(
      //       hint: new Text("Departure Time *"),
      //       value: _departureTime,
      //       items: _departureTimeDropDownMenuItem,
      //       onChanged: (String value) {
      //         setState(() {
      //           _departureTime = value;
      //         });
      //       },
      //     ),
      //   ],
      // ),

      //           SizedBox(
      //             height: 16.0,
      //           ),
      //           _payByOtherPhone
      //               ? TextField(
      //                   decoration: new InputDecoration(
      //                       icon: Icon(Icons.phone),
      //                       labelText: "Phone Number",
      //                       border: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(10.0))),
      //                   keyboardType: TextInputType.text,
      //                   onChanged: (String value) {
      //                     setState(() {
      //                       //_titleValue = value;
      //                     });
      //                   },
      //                 )
      //               : SwitchListTile(
      //                   title: const Text("Pay By Other Phone"),
      //                   value: false,
      //                   onChanged: (bool value) {
      //                     setState(() {
      //                       _payByOtherPhone = true;
      //                     });
      //                   },
      //                   secondary: const Icon(Icons.phone),
      //                 ),
      //           SizedBox(
      //             height: 16.0,
      //           ),
      // Center(
      //   child: RaisedButton(
      //     child: Text("Check Availiable Buses"),
      //     color: Color.fromRGBO(0, 136, 204, 0.8),
      //     onPressed: () {
      //       setState(() {
      //         Navigator.pushNamed(context, '/selectBus');
      //       });
      //     },
      //   ),
      //  )
      //         ],
      //       ),
      //     ),
      //   ),
      //   bottomNavigationBar: Buttom(0),
      // );
      body: Container(
          color: Colors.white,
          constraints: BoxConstraints.expand(),
          //  child: Form(
          //key: _formKey,
          // autovalidate: false,
          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 32.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: new DropDownField(
                          value: _destination_city,
                          required: true,
                          itemsVisibleInDropdown: 1,
                          strict: false,
                          labelText: 'From *',
                          items: _cities,
                          setter: (dynamic value) {
                            setState(() {
                              _departure_city = value;
                            });
                          }),
                    ),
                    new Flexible(
                      child: new DropDownField(
                          value: _destination_city,
                          required: true,
                          strict: false,
                          itemsVisibleInDropdown: 1,
                          labelText: 'TO',
                          items: _cities,
                          setter: (dynamic value) {
                            setState(() {
                              _destination_city = value;
                            });
                          }),
                    ),
                  ],
                ),
                Divider(height: 20.0, color: Theme.of(context).primaryColor),
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
                Divider(height: 20.0, color: Theme.of(context).primaryColor),
                new Row(
                  children: <Widget>[
                    const Icon(Icons.departure_board),
                    SizedBox(
                      width: 20,
                    ),
                    new DropdownButton(
                      hint: new Text("Departure Time *"),
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
                Divider(height: 20.0, color: Theme.of(context).primaryColor),
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
                Divider(height: 30.0, color: Theme.of(context).primaryColor),
                Center(
                  child: MaterialButton(
                    child: Text("Check Availiable Buses",
                        style: new TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        )),
                    shape: StadiumBorder(),
                    height: 45,
                    color: Color.fromRGBO(0, 136, 204, 0.8),
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, '/selectBus');
                      });
                    },
                  ),
                ),
                new Text(
                  "YEMANE",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                  ),
                )
              ],
            ),
          )),
      bottomNavigationBar: Buttom(0),
    );
  }
}
