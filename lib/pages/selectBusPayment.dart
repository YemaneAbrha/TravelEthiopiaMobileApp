import 'package:flutter/material.dart';

import 'package:Guzo/pages/common/basicappbar.dart';
import 'package:Guzo/pages/common/buttombarnavigation.dart';

class SelectBusPage extends StatefulWidget {
  @override
  _SelectBusPageState createState() => _SelectBusPageState();
}

class _SelectBusPageState extends State<SelectBusPage> {
  int selectedbus;
  int selectedpayment;

  @override
  void initState() {
    super.initState();
    selectedbus = 0;
    selectedpayment = 0;
    // _saveCurrentRoute("/HomeScreen");
  }

  setselectedpayment(int value) {
    setState(() {
      selectedpayment = value;
    });
  }

  setsetselectedbus(int value) {
    setState(() {
      selectedbus = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar.getAppBar(context),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        padding: EdgeInsets.all(32.0),
      ),
      bottomNavigationBar: Buttom(0),
    );
  }
}
