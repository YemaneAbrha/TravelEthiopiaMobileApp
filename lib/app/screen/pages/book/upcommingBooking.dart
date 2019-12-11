import 'package:flutter/material.dart';

import 'package:Guzo/app/functions/api/requestBookAPI.dart';

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
        padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 10.0),
        child: FutureBuilder(
            future: upcommingBookingRequestAPI(context),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 5.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Expanded(
                                  child: ListTile(
                                    title: Text(
                                      "From " +
                                          snapshot.data[index].from +
                                          " to " +
                                          snapshot.data[index].to,
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                    subtitle: Text(
                                        "Selam bus form addis ababa to asmera"),
                                  ),
                                  flex: 7,
                                ),
                                new Expanded(
                                  child: IconButton(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    onPressed: () {
                                      setState(() {
                                        _isvisiblecontent[index] =
                                            !_isvisiblecontent[index];
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            _isvisiblecontent[0]
                                ? Container(
                                    padding: EdgeInsets.fromLTRB(
                                        10.0, 0.0, 10.0, 10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Divider(
                                            height: 20.0,
                                            color:
                                                Theme.of(context).primaryColor),
                                        SizedBox(height: 10.0),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "From:  ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                  snapshot.data[index].from),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10.0),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: new Text(
                                                "To  ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Expanded(
                                              child: new Text(
                                                  snapshot.data[index].to),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10.0),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: new Text(
                                                "Departure Date: ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Expanded(
                                              child: new Text(snapshot
                                                  .data[index].departure_date),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10.0),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: new Text(
                                                "Depatrture Time:  ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Expanded(
                                              child: new Text(snapshot
                                                  .data[index].departure_time),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10.0),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: new Text("Fee:  ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            Expanded(
                                              child: new Text(snapshot
                                                  .data[index].fee
                                                  .toString()),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10.0),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: new Text(
                                                "Status",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Expanded(
                                              child: new Text(
                                                  snapshot.data[index].status),
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
                                  MaterialButton(
                                    color: Color.fromRGBO(0, 136, 204, 0.8),
                                    child: Text(
                                      "Delete",
                                      style: new TextStyle(color: Colors.white),
                                    ),
                                    shape: StadiumBorder(),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              }
            }));
  }
}
