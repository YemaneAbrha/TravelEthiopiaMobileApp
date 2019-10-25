import 'package:flutter/material.dart';

class UpcommingBookingPage extends StatefulWidget {
  _UpcommingBookingPageState createState() => new _UpcommingBookingPageState();
}

class _UpcommingBookingPageState extends State<UpcommingBookingPage> {
  List<bool> _isvisiblecontent;
  @override
  void initState() {
    super.initState();
    _isvisiblecontent = [false, false];
  }

  @override
  Widget build(BuildContext context) {
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
                // new Container(
                //   height: 150.0,
                //   child: Image.asset(
                //     'assets/images/Guzo.png',
                //     fit: BoxFit.fitWidth,
                //   ),
                // ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: ListTile(
                        title: Text(
                          "From ODA-BULTUM to ADDIS ABABA",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text("Selam bus form addis ababa to asmera"),
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
                      ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text("Cancle"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
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
                // new Container(
                //   height: 150.0,
                //   child: Image.asset(
                //     'assets/images/Guzo.png',
                //     fit: BoxFit.fitWidth,
                //   ),
                // ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: ListTile(
                        title: Text(
                          "From Addis Ababa   To Debre Markos",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text("Selam bus form addis ababa to asmera"),
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
                      ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text("Cancle"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
