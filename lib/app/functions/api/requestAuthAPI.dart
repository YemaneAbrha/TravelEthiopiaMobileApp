import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:Guzo/app/functions/controller/saveCurrentLogin.dart';
import 'package:Guzo/app/functions/controller/showSingleButtonDialog.dart';
import 'package:Guzo/app/functions/model/json/loginModel.dart';

Future requestSignup(BuildContext context, Map<String, dynamic> body) async {
  try {
    final url = "http://guzo-booking.herokuapp.com/user/auth/signup";
    final jsonbody = await jsonEncode(body, toEncodable: (e) => json.decode(e));
    return await http.post(url, body: jsonbody, headers: {
      "Accept": "application/json",
      "Content-Type": "application/json"
    }).then((response) {
      print(response.statusCode);
      (response.statusCode == 201)
          ? requestLoginAPI(context, jsonbody)
          : showDialogSingleButton(context, "Unable To Create Account",
              "There may be validation Error try to correct input", "OK");
    });
  } catch (err) {
    showDialogSingleButton(
        context, "Unable to register", "Connection Error ", "OK");
  }
}

Future requestLoginAPI(BuildContext context, jsonbody) async {
  try {
    final url = "http://guzo-booking.herokuapp.com/user/auth/login";
    return http.post(url, body: jsonbody, headers: {
      "Accept": "application/json",
      "Content-Type": "application/json"
    }).then((response) {
      (response.statusCode == 200)
          ? (() {
              Navigator.pushReplacementNamed(context, '/book');
              final responsebody = json.decode(response.body);
              saveCurrentLogin(responsebody);
              return LoginModel.fromJson(responsebody);
            })
          : showDialogSingleButton(
              context, "unable to login", "wrong username or password", "OK");
    });
  } catch (e) {
    showDialogSingleButton(context, "unable login", "Network Error", "OK");
  }
}
