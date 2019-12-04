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
    final url = "https://guzo-booking.herokuapp.com/user";
    http.Response response = await http.post(url, body: body, headers: {});
    if (response.statusCode == 201) {
      final user = json.decode(response.body);
      print("Sucess");
      //requestLoginAPI(context, user[0].phonenumber);
    }
  } catch (err) {
    showDialogSingleButton(context, "Unable to Register", "Server Error", "OK");
  }
}

Future<LoginModel> requestLoginAPI(
    BuildContext context, String phonenumber) async {
  final url = "GuzoEthiopia.net/user/login";
  Map<String, String> body = {'phonenumber': phonenumber};
  final response = await http.post(
    url,
    body: body,
    headers: {},
  );
  if (response.statusCode == 200) {
    final responsebody = json.decode(response.body);
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
