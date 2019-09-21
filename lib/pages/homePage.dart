import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:travel_ethiopia/pages/common/basicdrawer.dart';
import 'package:travel_ethiopia/pages/common/bottom_navy_bar.dart';
import 'package:datetime_picker_formfield/time_picker_formfield.dart';

class HomeScreen extends StatefulWidget {
  //final dateFormat = DateFormat();
  HomeScreen(BuildContext context);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  // TextStyle getCustomFontStyle() {
  //   return const TextStyle(
  //     fontFamily: 'Ruboto',
  //     color: Colors.black,
  //     fontWeight: FontWeight.w100,
  //     fontSize: 50.0,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    int _counter = 0;

    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Travel Ethiopia",
          // style: getCustomFontStyle(),
        ),
        backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      drawer: BasicDrawer(),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        padding: EdgeInsets.all(32.0),
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
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
              activeColor: Colors.purpleAccent),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
              activeColor: Colors.pink),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue),
        ],
      ),
    );
  }
}
