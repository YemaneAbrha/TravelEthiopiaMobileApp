import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:Guzo/functions/getUserInfo.dart';
import 'package:Guzo/functions/showSingleButtonDialog.dart';

var Token;
//show profile
Future requestShowProfileAPI(BuildContext context) async {
  final url = 'profile/url';

  await getToken().then((result) {
    Token = result;
  });
  http.Response response = await http
      .get(url, headers: {HttpHeaders.authorizationHeader: "Token $Token"});
  if (response.statusCode == 200) {
    final responseJson = jsonDecode(response.body);
    Map<String, dynamic> profile = {
      'fullName': responseJson['full_name'],
      'phoneNumber': responseJson['phone_number'],
      'image': responseJson['image']
    };
  }
}

//update profile
Future requestUpdateProfile(
    BuildContext context, Map<String, dynamic> body) async {
  final url = 'updateprofileurl';
  http.Response response = await http.post(url,
      body: body, headers: {HttpHeaders.authorizationHeader: "Token $Token"});
  if (response.statusCode == 200) {
    showDialogSingleButton(
        context, "success", "Your profile changed success full", "OK");
  } else {
    showDialogSingleButton(
        context, "Un To Change Profile", "Correct the form data", "OK");
    return null;
  }
}
