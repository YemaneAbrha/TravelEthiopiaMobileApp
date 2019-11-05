import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:Guzo/pages/common/basicappbar.dart';
import 'package:Guzo/pages/common/buttombarnavigation.dart';

class UserProfile extends StatefulWidget {
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
        padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 10.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            // new CircleAvatar(
            //   child: Image.network(
            //     "https://avatars0.githubusercontent.com/u/8264639?s=460&v=4",
            //     fit: BoxFit.scaleDown,
            //   ),
            // ),
            // ListTile(
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage(
                    "https://avatars0.githubusercontent.com/u/8264639?s=460&v=4"),
              ),
            ),

            // ),

            // new Container(
            //   padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
            //   // child: new CircularProfileAvatar(
            //   //   'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
            //   //   radius: 150,
            //   //   backgroundColor: Color.fromRGBO(0, 136, 204, 0.8),
            //   //   borderWidth: 2,
            //   //   cacheImage: true,
            //   //   initialsText: Text(
            //   //     "YA",
            //   //     style: TextStyle(fontSize: 40, color: Colors.white),
            //   //   ),
            //   //   borderColor: Color.fromRGBO(0, 136, 204, 0.8),
            //   //   elevation: 10.0,
            //   //   onTap: () {
            //   //     print('adil');
            //   //   },
            //   //   showInitialTextAbovePicture: true,
            //   // ),
            // ),
            SizedBox(
              height: 30.0,
            ),
            new Center(
                child: new TextFormField(
              textCapitalization: TextCapitalization.sentences,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Full Name *",
                  labelStyle: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
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
              height: 30.0,
            ),
            new Center(
              child: new TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    icon: Icon(Icons.call),
                    labelText: "Phone Number",
                    labelStyle: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
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
              height: 30.0,
            ),
            new Center(
              child: MaterialButton(
                height: 45.0,
                minWidth: 150.0,
                color: Color.fromRGBO(0, 136, 204, 0.8),
                child: Text(
                  "Change Profile",
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                shape: StadiumBorder(),
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
