import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:travel_ethiopia/pages/common/buttombarnavigation.dart';
import 'package:travel_ethiopia/pages/common/basicappbar.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new ListTile(
            leading: Icon(Icons.directions_bus),
            title: Text(widget.buses[index]["bus_title"]),
            subtitle: Text("From: " +
                widget.buses[index]["From"] +
                "   To: " +
                widget.buses[index]["To"] +
                "   Departure Date :  " +
                widget.buses[index]["departure_date"] +
                "   departure Time: " +
                widget.buses[index]["departure_time"] +
                "   Price: ETB  " +
                widget.buses[index]["price"]),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text("BUY TICKET"),
                  onPressed: () {},
                ),
                FlatButton(
                  child: const Text("MORE"),
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
      body: Container(
        margin: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
        child: _buildBusList(),
      ),
      bottomNavigationBar: Buttom(2),
    );
    //       child: ListView(
    //         children: <Widget>[
    //           Card(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: <Widget>[
    //                 const ListTile(
    //                   leading: Icon(Icons.directions_bus),
    //                   title: Text("Selam Bus"),
    //                   subtitle: Text(
    //                       "From: Addis Ababa to Mekelle for tommorow morning Price: ETB 550"),
    //                 ),
    //                 ButtonTheme.bar(
    //                   child: ButtonBar(
    //                     children: <Widget>[
    //                       FlatButton(
    //                         child: const Text("BUY TICKET"),
    //                         onPressed: () {},
    //                       ),
    //                       FlatButton(
    //                         child: const Text("MORE "),
    //                         onPressed: () {},
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           // second Card
    //           Card(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: <Widget>[
    //                 const ListTile(
    //                   leading: Icon(Icons.directions_bus),
    //                   title: Text("Geda Bus"),
    //                   subtitle: Text(
    //                       "From: Addis Ababa to Assosa for tommorow morning Price: ETB 550"),
    //                 ),
    //                 ButtonTheme.bar(
    //                   child: ButtonBar(
    //                     children: <Widget>[
    //                       FlatButton(
    //                         child: const Text("BUY TICKET"),
    //                         onPressed: () {},
    //                       ),
    //                       FlatButton(
    //                         child: const Text("MORE "),
    //                         onPressed: () {},
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),

    //           //third Card
    //           Card(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: <Widget>[
    //                 const ListTile(
    //                   leading: Icon(Icons.directions_bus),
    //                   title: Text("Abay Bus"),
    //                   subtitle: Text(
    //                       "From: Addis Ababa to BAhrdar for tommorow morning Price: ETB 550"),
    //                 ),
    //                 ButtonTheme.bar(
    //                   child: ButtonBar(
    //                     children: <Widget>[
    //                       FlatButton(
    //                         child: const Text("BUY TICKET"),
    //                         onPressed: () {},
    //                       ),
    //                       FlatButton(
    //                         child: const Text("MORE "),
    //                         onPressed: () {},
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           //fourth card
    //           Card(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: <Widget>[
    //                 const ListTile(
    //                   leading: Icon(Icons.directions_bus),
    //                   title: Text("Lemalimo Bus"),
    //                   subtitle: Text(
    //                       "From: Addis Ababa to Gonder for tommorow morning Price: ETB 600"),
    //                 ),
    //                 ButtonTheme.bar(
    //                   child: ButtonBar(
    //                     children: <Widget>[
    //                       FlatButton(
    //                         child: const Text("BUY TICKET"),
    //                         onPressed: () {},
    //                       ),
    //                       FlatButton(
    //                         child: const Text("MORE "),
    //                         onPressed: () {},
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           //fivth Card
    //           Card(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: <Widget>[
    //                 const ListTile(
    //                   leading: Icon(Icons.directions_bus),
    //                   title: Text("Zemen Bus"),
    //                   subtitle: Text(
    //                       "From: Addis Ababa to Drie-Dawa for tommorow morning Price: ETB 600"),
    //                 ),
    //                 ButtonTheme.bar(
    //                   child: ButtonBar(
    //                     children: <Widget>[
    //                       FlatButton(
    //                         child: const Text("BUY TICKET"),
    //                         onPressed: () {},
    //                       ),
    //                       FlatButton(
    //                         child: const Text("MORE "),
    //                         onPressed: () {},
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   bottomNavigationBar: Buttom(2),
    //);
  }
}
