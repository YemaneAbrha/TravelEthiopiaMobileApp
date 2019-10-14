import 'package:flutter/material.dart';
import 'package:travel_ethiopia/pages/common/buttombarnavigation.dart';
import 'package:travel_ethiopia/pages/common/basicappbar.dart';

class HomeScreen extends StatefulWidget {
  // final buses;
  var buses;
  // HomeScreen(this.products);
  HomeScreen(BuildContext context);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // _saveCurrentRoute("/HomeScreen");
  }

  Widget _buildBusItem(BuildContext context, int index) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.directions_bus),
            title: Text(""),
            subtitle: Text("From: To: For: At: Price: ETB"),
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
          itemCount: widget.buses.lenght,
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
        padding: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text("Selam Bus"),
                      subtitle: Text(
                          "From: Addis Ababa to Mekelle for tommorow morning Price: ETB 550"),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text("BUY TICKET"),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: const Text("MORE "),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // second Card
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text("Geda Bus"),
                      subtitle: Text(
                          "From: Addis Ababa to Assosa for tommorow morning Price: ETB 550"),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text("BUY TICKET"),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: const Text("MORE "),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //third Card
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text("Abay Bus"),
                      subtitle: Text(
                          "From: Addis Ababa to BAhrdar for tommorow morning Price: ETB 550"),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text("BUY TICKET"),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: const Text("MORE "),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //fourth card
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text("Lemalimo Bus"),
                      subtitle: Text(
                          "From: Addis Ababa to Gonder for tommorow morning Price: ETB 600"),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text("BUY TICKET"),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: const Text("MORE "),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //fivth Card
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text("Zemen Bus"),
                      subtitle: Text(
                          "From: Addis Ababa to Drie-Dawa for tommorow morning Price: ETB 600"),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text("BUY TICKET"),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: const Text("MORE "),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Buttom(2),
    );
  }
}
