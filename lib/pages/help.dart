import 'package:flutter/material.dart';
import 'package:Guzo/pages/common/buttombarnavigation.dart';
import 'package:Guzo/pages/common/basicappbar.dart';
import 'package:Guzo/functions/showSingleButtonDialog.dart';

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
                      leading: Icon(Icons.help),
                      title: Text("Booking Bus"),
                      subtitle: Text(
                          "First Do this then this then this then this then this this this okay "),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          MaterialButton(
                            color: Color.fromRGBO(0, 136, 204, 0.8),
                            child: Text(
                              "MORE ",
                              style: new TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              showDialogSingleButton(
                                  context,
                                  "FOR BOOKING",
                                  "We use cookies to personalise content and ads First Do this then this then this then this then this this this okay First Do this then this then this then this then this this this okay",
                                  "ok");
                            },
                            shape: StadiumBorder(),
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
                          MaterialButton(
                            child: Text(
                              "MORE ",
                              style: new TextStyle(color: Colors.white),
                            ),
                            color: Color.fromRGBO(0, 136, 204, 0.8),
                            onPressed: () {},
                            shape: StadiumBorder(),
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
                          MaterialButton(
                            child: Text(
                              "MORE ",
                              style: new TextStyle(color: Colors.white),
                            ),
                            color: Color.fromRGBO(0, 136, 204, 0.8),
                            onPressed: () {},
                            shape: StadiumBorder(),
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
                          MaterialButton(
                            child: Text(
                              "MORE ",
                              style: new TextStyle(color: Colors.white),
                            ),
                            color: Color.fromRGBO(0, 136, 204, 0.8),
                            onPressed: () {},
                            shape: StadiumBorder(),
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
      bottomNavigationBar: Buttom(3),
    );
  }
}
