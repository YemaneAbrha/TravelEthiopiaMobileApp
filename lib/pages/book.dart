import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:travel_ethiopia/pages/common/basicappbar.dart';
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
      appBar: BasicAppBar.getAppBar(context),
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
              TextField(
                decoration: new InputDecoration(
                    labelText: "PhoneNumber(If you will pay by other phone) "),
                keyboardType: TextInputType.text,
                onChanged: (String value) {
                  setState(() {
                    //_titleValue = value;
                  });
                },
              ),
              SizedBox(
                height: 10.0,
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
