import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:Guzo/app/screen/pages/auth/registration.dart';
import 'package:Guzo/app/screen/pages/book/book.dart';
import 'package:Guzo/app/functions/controller/getUserInfo.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage(BuildContext context);
  @override
  _SplashScreenPage createState() => new _SplashScreenPage();
}

class _SplashScreenPage extends State<SplashScreenPage> {
  bool _isauthenticate;
  _isAuthenticate() async {
    bool value = await isAuthenticate();
    // _isauthenticate = await isAuthenticate();

    // print("is authenticate function");
    setState(() {
      _isauthenticate = value;
    });
    print("First Here");
    print(_isauthenticate);
  }

  // @override
  // initState() {
  //   _isauthenticate = _isAuthenticate();
  //   isAuthenticate().then((value) {
  //     _isauthenticate = true;
  //   });

  // super.initState();
  // }
  // Widget construct() {
  // return new SplashScreen(
  //   seconds: 8,
  //   navigateAfterSeconds:
  //       _isauthenticate ? new Book(context) : new RegistrationPage(context),
  //   image: new Image.asset('assets/images/Guzo.png'),
  //   gradientBackground: new LinearGradient(
  //     colors: [Colors.green, Colors.green],
  //     begin: Alignment.topLeft,
  //     end: Alignment.bottomRight,
  //   ),
  //   styleTextUnderTheLoader: new TextStyle(),
  //   photoSize: 100.0,
  //   onClick: () => print(""),
  //   loaderColor: Colors.white,
  // );
  // }
  @override
  void initState() {
    super.initState();
    _isAuthenticate();
  }

  @override
  Widget build(BuildContext context) {
    // isAuthenticate().then((value) {
    //   _isauthenticate = true;
    // });
    print("this is  yemsn abrha ");
    print(_isauthenticate);
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds:
          _isauthenticate ? new Book(context) : new RegistrationPage(context),
      image: new Image.asset('assets/images/Guzo.png'),
      gradientBackground: new LinearGradient(
        colors: [Colors.green, Colors.green],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print(""),
      loaderColor: Colors.white,
    );
    // return  FutureBuilder(

    // );R
  }
}
