import 'package:flutter/material.dart';

import 'package:Guzo/pages/common/basicappbar.dart';
import 'package:Guzo/pages/common/buttombarnavigation.dart';

class SelectBusPage extends StatefulWidget {
  @override
  _SelectBusPageState createState() => _SelectBusPageState();
}

class _SelectBusPageState extends State<SelectBusPage> {
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
        padding: EdgeInsets.all(0.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      // backgroundImage: Image.asset('assets/images/Guzo.png'),
                      backgroundImage: AssetImage('assets/images/Guzo.png'),
                      radius: 25,
                    ),
                    title: Text(
                      "Guzo Ethiopia",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    subtitle: Text(
                      "Guzo Ethiopia Mobile Platform for booking trip around the Ethiopia \nPrice: 300.0 \t\t\t\t\t Seat Leaft: 54 ",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    onTap: () {
                      print("You Tab ");
                    },
                  ),
                  Divider(height: 20.0, color: Theme.of(context).primaryColor),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Buttom(0),
    );
  }
}
