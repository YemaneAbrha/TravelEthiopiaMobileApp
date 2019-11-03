import 'package:flutter/material.dart';

class PastBookingPage extends StatefulWidget {
  _PastBookingPageState createState() => new _PastBookingPageState();
}

class _PastBookingPageState extends State<PastBookingPage> {
  List<bool> _isvisiblecontent;
  @override
  void initState() {
    super.initState();
    _isvisiblecontent = [false, false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 10.0),
      child: ListView(
        children: <Widget>[
          new Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: ListTile(
                        title: Text(
                          "Golden Bus",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle:
                            Text("Golden bus form Addis Ababa to Mekelle"),
                      ),
                      flex: 7,
                    ),
                    new Expanded(
                      child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          setState(() {
                            _isvisiblecontent[0] = !_isvisiblecontent[0];
                          });
                        },
                      ),
                    ),
                  ],
                ),
                _isvisiblecontent[0]
                    ? Container(
                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        child: Column(
                          children: <Widget>[
                            Divider(
                                height: 20.0,
                                color: Theme.of(context).primaryColor),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "From:  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text("Addis Ababa"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "To  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("Asmera"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Departure Date: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("tusday,nov 2017"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Depatrture Time:  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("Mornnig"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text("Fee:  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                Expanded(
                                  child: new Text("1000.00"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Status",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("payed"),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        height: 10.0,
                      )
              ],
            ),
          ),
          new Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: ListTile(
                        title: Text(
                          "Lemalio Bus",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle:
                            Text("Lemalimo  bus form addis ababa to Gonder"),
                      ),
                      flex: 7,
                    ),
                    new Expanded(
                      child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          setState(() {
                            _isvisiblecontent[1] = !_isvisiblecontent[1];
                          });
                        },
                      ),
                    ),
                  ],
                ),
                _isvisiblecontent[1]
                    ? Container(
                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        child: Column(
                          children: <Widget>[
                            Divider(
                                height: 20.0,
                                color: Theme.of(context).primaryColor),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "From:  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text("Addis Ababa"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "To  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("Asmera"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Departure Date: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("tusday,nov 2017"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Depatrture Time:  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("Mornnig"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text("Fee:  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                Expanded(
                                  child: new Text("1000.00"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Status",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("payed"),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        height: 10.0,
                      )
              ],
            ),
          ),
          new Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: ListTile(
                        title: Text(
                          "Geda  Bus",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle:
                            Text("Geda bus form Dri-Dawa ababa to Addis Ababa"),
                      ),
                      flex: 7,
                    ),
                    new Expanded(
                      child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          setState(() {
                            _isvisiblecontent[2] = !_isvisiblecontent[2];
                          });
                        },
                      ),
                    ),
                  ],
                ),
                _isvisiblecontent[2]
                    ? Container(
                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        child: Column(
                          children: <Widget>[
                            Divider(
                                height: 20.0,
                                color: Theme.of(context).primaryColor),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "From:  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text("Addis Ababa"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "To  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("Asmera"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Departure Date: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("tusday,nov 2017"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Depatrture Time:  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("Mornnig"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text("Fee:  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                Expanded(
                                  child: new Text("1000.00"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Status",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("payed"),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        height: 10.0,
                      )
              ],
            ),
          ),
          new Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: ListTile(
                        title: Text(
                          "Abay Bus",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle:
                            Text("Selam bus form Shasemenie to Addis Ababa"),
                      ),
                      flex: 7,
                    ),
                    new Expanded(
                      child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          setState(() {
                            _isvisiblecontent[3] = !_isvisiblecontent[3];
                          });
                        },
                      ),
                    ),
                  ],
                ),
                _isvisiblecontent[3]
                    ? Container(
                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        child: Column(
                          children: <Widget>[
                            Divider(
                                height: 20.0,
                                color: Theme.of(context).primaryColor),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "From:  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text("Addis Ababa"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "To  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("Asmera"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Departure Date: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("tusday,nov 2017"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Depatrture Time:  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("Mornnig"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text("Fee:  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                Expanded(
                                  child: new Text("1000.00"),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    "Status",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: new Text("payed"),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        height: 10.0,
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
