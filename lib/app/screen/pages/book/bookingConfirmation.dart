import 'package:flutter/material.dart';
import 'package:Guzo/app/screen/widget/basicappbar.dart';
import 'package:Guzo/app/screen/widget/buttombarnavigation.dart';

class BookingConfirmationPage extends StatefulWidget {
  BookingConfirmationPage(BuildContext context);
  @override
  _BookingConfirmationPageState createState() =>
      _BookingConfirmationPageState();
}

class _BookingConfirmationPageState extends State<BookingConfirmationPage> {
  bool _payByOtherPhone;
  @override
  void initState() {
    super.initState();
    _payByOtherPhone = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar.getAppBar(context),
      body: Container(
        child: ListView(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: ListTile(
                          title: Text(
                            "Golden Bus",
                            style: new TextStyle(
                              fontSize: 25.0,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(height: 20.0, color: Theme.of(context).primaryColor),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: Text(
                          "From:" + "\t" + "Addis Ababa",
                          style: TextStyle(fontFamily: "Raleway", fontSize: 19),
                        ),
                      ),
                      new Expanded(
                        child: Text(
                          "To:" + "\t" + "Mekelle",
                          style: TextStyle(fontSize: 20, fontFamily: "Raleway"),
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 20.0, color: Theme.of(context).primaryColor),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: Text(
                          "Departure Date:" + "\t\t" + "19 Augest 2012",
                          style: TextStyle(fontSize: 19, fontFamily: "Raleway"),
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 20.0, color: Theme.of(context).primaryColor),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: Text(
                          "Depatrure Time:" + "\t\t" + "After Noon",
                          style: TextStyle(fontSize: 19, fontFamily: "Raleway"),
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 20.0, color: Theme.of(context).primaryColor),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: Text(
                          "Price ETB:" + "\t\t" + "1000.0",
                          style: TextStyle(fontSize: 19, fontFamily: "Raleway"),
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 20.0, color: Theme.of(context).primaryColor),
                  _payByOtherPhone
                      ? TextField(
                          decoration: new InputDecoration(
                              icon: Icon(Icons.phone),
                              labelText: "Phone Number",
                              labelStyle: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.black,
                                fontSize: 19.0,
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
                              fontSize: 19.0,
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
                  Divider(height: 20.0, color: Theme.of(context).primaryColor),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        MaterialButton(
                          color: Color.fromRGBO(28, 112, 50, 1.0),
                          child: Text(
                            "BUY TICKET",
                            style: new TextStyle(
                                fontFamily: "Raleway", color: Colors.white),
                          ),
                          shape: StadiumBorder(),
                          onPressed: () {},
                        ),
                        MaterialButton(
                          color: Color.fromRGBO(28, 112, 50, 1.0),
                          child: Text(
                            "CANCEL",
                            style: new TextStyle(
                                fontFamily: "Raleway", color: Colors.white),
                          ),
                          shape: StadiumBorder(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              elevation: 10.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Buttom(2),
    );
  }
}
