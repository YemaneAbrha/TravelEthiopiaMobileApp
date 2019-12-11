import 'dart:_http';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:Guzo/app/functions/controller/getUserInfo.dart';
import 'package:Guzo/app/functions/controller/saveLogout.dart';
import 'package:Guzo/app/functions/model/json/loginModel.dart';

Future<LoginModel> requestLogoutAPI(BuildContext context) async {
  final url = "https://www.backendurl.com/logout";

  var token;

  await getToken().then((result) {
    token = result;
  });

  final response = await http.post(
    url,
    headers: {HttpHeaders.authorizationHeader: "Token $token"},
  );

  if (response.statusCode == 200) {
    saveLogout();
    return null;
  } else {
    saveLogout();
    return null;
  }
}
