import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:travel_ethiopia/functions/saveCurrentLogin.dart';
import 'package:travel_ethiopia/functions/showSingleButtonDialog.dart';
import 'package:travel_ethiopia/model/json/loginModel.dart';

Future<LoginModel> requestLoginAPI(
    BuildContext context, String phonenumber) async {
  final url = 'myloginurl';
  Map<String, String> body = {'phonenumber': phonenumber};
  final response = await http.post(
    url,
    body: body,
  );
  if (response.statusCode == 200) {
    final responsebody = json.decode(response.body);
    //saveCurrentLogin(responsebody);
    // return LoginModel.fromJson(responsebody);
  } else {
    final responseJson = json.decode(response.body);
    // SaveCurrentLogin(responseJson);
    showDialogSingleButton(
        context,
        'Unable to login',
        'Your phone number may be incorrect or you dont have account plase create account and login again',
        'OK');
    return null;
  }
}
