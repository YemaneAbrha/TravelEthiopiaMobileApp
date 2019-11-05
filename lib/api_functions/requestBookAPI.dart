import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:Guzo/functions/showSingleButtonDialog.dart';
import 'package:Guzo/functions/getUserInfo.dart';

final Token = getToken();
Future checkAvailiablity(
    BuildContext context, Map<String, dynamic> body) async {
  try {
    final url = 'guzoethipia.net/book';
    http.Response response = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer $Token',
      "Accept": "application/json",
      "Content-type": "application/json"
    });
  } catch (e) {
    showDialogSingleButton(
        context, "Unable to check-Availiablity", "Server Error", "OK");
  }
}

Future requesBookAPI(BuildContext context, Map<String, dynamic> body) async {
  final url = 'guzoethiopia.net/book';
  http.Response response = await http.post(
    url,
    body: body,
    headers: {HttpHeaders.authorizationHeader: "Bearer $Token"},
  );
  if (response.statusCode == 200) {
    showDialogSingleButton(
        context, "success", "Your Booking was success-fully", "OK");
  } else {
    showDialogSingleButton(
        context, "Unabel to Book", "Correct the form data", "OK");
    return null;
  }
}

Future upcommingBookingRequestAPI(BuildContext context) async {
  final url = 'guzoethiopia.net/upcomming';
  http.Response response = await http
      .get(url, headers: {HttpHeaders.authorizationHeader: "Bearer $Token"});
  if (response.statusCode == 200) {
    final responseJson = jsonDecode(response.body);
    return responseJson;
  }
}

Future pastBoookingRequestAPI(BuildContext context) async {
  final url = 'http/pastbooking';
  http.Response response = await http
      .get(url, headers: {HttpHeaders.authorizationHeader: "Token:$Token"});
  if (response.statusCode == 200) {
    final responseJson = jsonDecode(response.body);
    return responseJson;
  }
}

Future deleteBooking(BuildContext context, Map<String, dynamic> body) async {
  final url = 'http/pastbooking';
  http.Response response = await http
      .get(url, headers: {HttpHeaders.authorizationHeader: "Token:$Token"});
  if (response.statusCode == 200) {
    final responseJson = jsonDecode(response.body);
    return responseJson;
  }
}
