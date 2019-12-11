import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:Guzo/app/screen/widget/buttombarnavigation.dart';
import 'package:Guzo/app/screen/widget/basicappbar.dart';
import 'package:Guzo/app/functions/api/requestBookAPI.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen(BuildContext context);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar.getAppBar(context),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        // padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
        child: FutureBuilder(
          future: allDeparture(context),
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
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: ListTile(
                                title: Text(
                                  snapshot.data[index].bus_name,
                                  style: new TextStyle(fontSize: 20.0),
                                ),
                                subtitle: Text(
                                  "\n" + snapshot.data[index].bus_description,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              flex: 7,
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                          child: Column(
                            children: <Widget>[
                              Divider(
                                  height: 20.0,
                                  color: Theme.of(context).primaryColor),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "From:  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(snapshot.data[index].from),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "TO:  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(snapshot.data[index].to),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: new Text(
                                      "Departure Date :  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    child: new Text(
                                        snapshot.data[index].departure_date),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: new Text(
                                      "Departure Time :  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    child: new Text(
                                        snapshot.data[index].departure_time),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: new Text(
                                      "Price ETB :  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    child: new Text(
                                        snapshot.data[index].fee.toString()),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: new Text(
                                      "Availiable Seat :  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    child: new Text(snapshot
                                        .data[index].availiable_seat
                                        .toString()),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              MaterialButton(
                                // color: Color.fromRGBO(0, 136, 204, 0.8),
                                color: Color.fromRGBO(28, 112, 50, 1.0),
                                child: Text(
                                  "BUY TICKET",
                                  style: new TextStyle(color: Colors.white),
                                ),
                                shape: StadiumBorder(),
                                onPressed: () {
                                  Map<String, dynamic> body = {
                                    'id': snapshot.data[index].id,
                                  };
                                  //  print(body.runtimeType);
                                  //requesBookAPI(context, body);
                                  Navigator.pushNamed(
                                      context, '/bookingConfirmation');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
      bottomNavigationBar: Buttom(2),
    );
  }
}
