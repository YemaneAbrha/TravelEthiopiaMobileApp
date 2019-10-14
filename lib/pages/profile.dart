import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:travel_ethiopia/pages/common/basicappbar.dart';
import 'package:travel_ethiopia/pages/common/buttombarnavigation.dart';

class UserProfile extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();
  UserProfile(BuildContext context);
  @override
  State<StatefulWidget> createState() {
    return _UserProfileState();
  }
}

class _UserProfileState extends State<UserProfile> {
  TextEditingController _fullnamecontroller;
  TextEditingController _phonenumbercontroller;
  TextEditingController _emailcontroller;
  @override
  void initState() {
    super.initState();
    _fullnamecontroller = new TextEditingController(text: "YemaneAbrha");
    _phonenumbercontroller = new TextEditingController(text: "+251913706986");
    _emailcontroller =
        new TextEditingController(text: "yemaneabrha21@gmail.com");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar.getAppBar(context),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      body: Container(
        child: ListView(
          children: <Widget>[
            // new Container(
            //     width: 190.0,
            //     height: 190.0,
            //     decoration: new BoxDecoration(
            //         shape: BoxShape.circle,
            //         image: new DecorationImage(
            //             fit: BoxFit.none,
            //             image: new NetworkImage(
            //                 "https://i.imgur.com/BoN9kdC.png")))),
            SizedBox(
              height: 10.0,
            ),
            new CircularProfileAvatar(
              'https://i.imgur.com/BoN9kdC.png',
              radius: 100,
              backgroundColor: Colors.green,
              borderWidth: 10,
              initialsText: Text(
                "YA",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              borderColor: Colors.brown,
              elevation: 5.0,
              onTap: () {
                print('adil');
              },
              showInitialTextAbovePicture: true,
            ),
            SizedBox(
              height: 15.0,
            ),
            new Center(
                child: new TextFormField(
              textCapitalization: TextCapitalization.sentences,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0))),
              controller: _fullnamecontroller,
              validator: (value) {
                if (value.isEmpty) {
                  return " Enter Full Name";
                }
                return null;
              },
            )),
            SizedBox(
              height: 15.0,
            ),
            new Center(
              child: new TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    icon: Icon(Icons.call),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0))),
                controller: _phonenumbercontroller,
                validator: (value) {
                  if (value.isEmpty) {
                    return " Enter Phone Number";
                  }
                  return null;
                },
              ),
              //  child: new Text("+251913706986"),
            ),
            SizedBox(
              height: 15.0,
            ),
            new Center(
              child: new TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0))),
                controller: _emailcontroller,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Enter Valid Email";
                  } else
                    return null;
                },
              ),
            ),
            new Center(
              child: FlatButton(
                child: Text("Submit"),
                onPressed: () {
                  //call the back end to update the profile;
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Buttom(3),
    );
  }
}
