import 'package:flutter/material.dart';

import 'package:travel_ethiopia/pages/common/basicdrawer.dart';
import 'package:travel_ethiopia/functions/showSingleButtonDialog.dart';

class HelpPage extends StatefulWidget {
  //final dateFormat = DateFormat();
  HelpPage(BuildContext context);
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber[400],
        iconTheme: IconThemeData(color: Colors.black),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      drawer: BasicDrawer(),
      backgroundColor: Colors.white,
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
                      leading: Icon(Icons.help),
                      title: Text("Booking Bus"),
                      subtitle: Text(
                          "First Do this then this then this then this then this this this okay "),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text("MORE "),
                            onPressed: () {
                              showDialogSingleButton(
                                  context,
                                  "FOR BOOKING",
                                  "We use cookies to personalise content and ads First Do this then this then this then this then this this this okay First Do this then this then this then this then this this this okay",
                                  "ok");
                            },
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
                      leading: Icon(Icons.help),
                      title: Text("For Update Profile"),
                      subtitle: Text(
                          "First Do this then this then this then this then this this this okay "),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
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
                      leading: Icon(Icons.help),
                      title: Text("For Privacy Issue"),
                      subtitle: Text(
                          "First Do this then this then this then this then this this this okay "),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
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
                        leading: Icon(Icons.help),
                        title: Text("About US"),
                        subtitle: Text("Here will be the link")),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
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
    );
  }
}
