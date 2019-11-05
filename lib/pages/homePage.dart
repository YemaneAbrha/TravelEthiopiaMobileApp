import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:Guzo/pages/common/buttombarnavigation.dart';
import 'package:Guzo/pages/common/basicappbar.dart';

class HomeScreen extends StatefulWidget {
  static final jsonBuses = """[
   {
      "bus_title": "Selam Bus",
      "From": "Addis Ababa",
      "To": "Asmera",
      "price": "1100",
      "departure_date": "After Tommorow",
      "departure_time": "Mornig"
    },
    {
      "bus_title": "Habesha Bus",
      "From": "Addis Ababa",
      "To": "Gonder",
      "price": "610",
      "departure_date": "After Tommorow",
      "departure_time": "Mornig"
    },
   {
      "bus_title": "Noah Bus",
      "From": "Addis Ababa",
      "To": "Assossa",
      "price": "800",
      "departure_date": " Tommorow",
      "departure_time": "Mornig"
  },
  {
      "bus_title": "Abay Bus",
      "From": "Addis Ababa",
      "To": "Bahrdar",
      "price": "500",
      "departure_date": " Tommorow",
      "departure_time": "Mornig"
  },
  {
      "bus_title": "Zemen Bus",
      "From": "Drie-Dawa ",
      "To": "Addis Ababa",
      "price": "800",
      "departure_date": " Tommorow",
      "departure_time": "Mornig"
  },
  {
      "bus_title": "Golden Bus",
      "From": "Shire",
      "To": "Addis Ababa",
      "price": "910",
      "departure_date": " Tommorow",
      "departure_time": "Mornig"
  },
  {
      "bus_title": "Geda Bus",
      "From": "Addis Ababa",
      "To": "Meda-Welabu",
      "price": "710",
      "departure_date": " Tommorow",
      "departure_time": "Mornig"
  }
  ]
""";
  final buses = json.decode(jsonBuses);

  // HomeScreen(this.products);
  HomeScreen(BuildContext context);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    print(widget.buses[0]['From']);
  }

  Widget _buildBusItem(BuildContext context, int index) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                child: ListTile(
                  title: Text(
                    widget.buses[index]["bus_title"],
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  subtitle: Text("RAting ***********"),
                ),
                flex: 7,
              )
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
            child: Column(
              children: <Widget>[
                Divider(height: 20.0, color: Theme.of(context).primaryColor),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "From:  ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(widget.buses[index]["From"]),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "TO:  ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(widget.buses[index]["To"]),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "Departure Date :  ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: new Text(widget.buses[index]["departure_date"]),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "Departure Time :  ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: new Text(widget.buses[index]["departure_time"]),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "Price ETB :  ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: new Text(widget.buses[index]["price"]),
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
                  color: Color.fromRGBO(0, 136, 204, 0.8),
                  child: Text(
                    "BUY TICKET",
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
  }

  Widget _buildBusList() {
    Widget busCards;
    try {
      if (widget.buses.length > 1) {
        busCards = ListView.builder(
          itemBuilder: _buildBusItem,
          itemCount: widget.buses.length,
        );
      } else {
        busCards = Container();
      }
    } catch (e) {
      busCards = Container(
        child: Center(
          child: Text("Server Error "),
        ),
      );
    }
    return busCards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar.getAppBar(context),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      //backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
        child: _buildBusList(),
      ),
      bottomNavigationBar: Buttom(2),
    );
  }
}
