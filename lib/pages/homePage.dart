import 'package:flutter/material.dart';
import 'package:travel_ethiopia/pages/common/buttombarnavigation.dart';
// import 'package:travel_ethiopia/pages/common/basicdrawer.dart';

class HomeScreen extends StatefulWidget {
  //final dateFormat = DateFormat();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Travel Ethiopia",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // _select(choices[1]);
            },
          ),
        ],
        backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      //drawer: BasicDrawer(),
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
