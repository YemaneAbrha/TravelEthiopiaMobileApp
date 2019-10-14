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
        padding: EdgeInsets.fromLTRB(10.0, 32.0, 10.0, 32.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: new InputDecoration(
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
              SizedBox(
                height: 16.0,
              ),
              TextField(
                decoration: new InputDecoration(
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
              // ListView(
              //   children: <Widget>[

              //   ],
              // ),
              SizedBox(
                height: 10.0,
              ),
              DateTimePickerFormField(
                inputType: InputType.date,
                format: dateFormat,
                editable: false,
                //enabled: false,
                decoration: InputDecoration(
                    labelText: 'Departure Date *',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hasFloatingPlaceholder: false),
              ),

              SizedBox(height: 10.0),

              TextField(
                decoration: InputDecoration(
                  labelText: 'Departure Time *',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),

              TextField(
                decoration: new InputDecoration(
                    labelText:
                        "PhoneNumber(If you went to pay by other phone) ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
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
