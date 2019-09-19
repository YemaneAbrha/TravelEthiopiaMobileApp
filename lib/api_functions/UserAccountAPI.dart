import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

Future userRegistration(BuildContext context, Map<String, dynamic> body) async {
  // send request to the api and create new user.
  final url = "http://10.0.2.2:8000/api/";
  final id = body['owner_id'];
  body['price'] = body['price'].toString();
  body['owner_id'] = body['owner_id'].toString();
  http.Response response = await http.post(
    url,
    body: body,
  );

  if (response.statusCode == 200) {
  } else {
    return null;
  }
}

Future editProfile(BuildContext context, Map<String, dynamic> body) async {}
