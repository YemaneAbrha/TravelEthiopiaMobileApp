// login and registration

import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:Guzo/functions/saveCurrentLogin.dart';
import 'package:Guzo/functions/showSingleButtonDialog.dart';
import 'package:Guzo/model/json/loginModel.dart';

Future requestSignup(BuildContext context, Map<String, dynamic> body) async {
  try {
    final url = "http://guzo-booking.herokuapp.com/user/auth/signup";
    final jsonbody = await jsonEncode(body, toEncodable: (e) => json.decode(e));
    http.Response response = await http.post(
      url,
      body: jsonbody,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
    );

    if (response.statusCode == 201) {
      requestLoginAPI(context, jsonbody);
    }
  } catch (err) {
    showDialogSingleButton(context, "Unable to Register", "Server Error", "OK");
  }
}

Future<LoginModel> requestLoginAPI(BuildContext context, jsonbody) async {
  final url = "http://guzo-booking.herokuapp.com/user/auth/login";
  // print("Here is am ting to login");
  final response = await http.post(
    url,
    body: jsonbody,
    headers: {
      'Accept': "Application/json",
      'Content-Type': 'Application/json',
    },
  );
  if (response.statusCode == 200) {
    final responsebody = json.decode(response.body);
    // print(responsebody);
    Navigator.pushReplacementNamed(context, '/book');
    saveCurrentLogin(responsebody);
    return LoginModel.fromJson(responsebody);
  } else {
    showDialogSingleButton(
        context,
        'Unable to login',
        'Your phone number may be incorrect or you dont have account plase create account and login again',
        'OK');
    return null;
  }
}
