import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:travel_ethiopia/pages/common/basicdrawer.dart';
import 'package:datetime_picker_formfield/time_picker_formfield.dart';
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
      // drawer: BasicDrawer(),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: new InputDecoration(labelText: "From *"),
                keyboardType: TextInputType.text,
                onChanged: (String value) {
                  setState(() {
                    //_titleValue = value;
                  });
                },
              ),
              TextField(
                decoration: new InputDecoration(labelText: "To * "),
                keyboardType: TextInputType.text,
                onChanged: (String value) {
                  setState(() {
                    //_titleValue = value;
                  });
                },
              ),
              // ListView(
              //   children: <Widget>[

              //   ],
              // ),
              DateTimePickerFormField(
                inputType: InputType.date,
                format: dateFormat,
                editable: false,
                //enabled: false,
                decoration: InputDecoration(
                    labelText: 'Departure Date *',
                    hasFloatingPlaceholder: false),
              ),

              SizedBox(height: 16.0),

              TimePickerFormField(
                format: timeFormat,
                decoration: InputDecoration(labelText: 'Departure Time *'),
                onChanged: (t) => setState(() => {}),
              ),
              Center(
                child: RaisedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/selectBus');
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
