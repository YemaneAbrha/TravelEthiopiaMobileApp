import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:travel_ethiopia/functions/showSingleButtonDialog.dart';
import 'package:travel_ethiopia/pages/myBooking.dart';
import 'package:travel_ethiopia/functions/getUserInfo.dart';

Future requesBookAPI(BuildContext context, Map<String, dynamic> body) async {
  final url = 'https/travelethiopia/book';
  http.Response response = await http.post(
    url,
    body: body,
  );
  if (response.statusCode == 200) {
    showDialogSingleButton(
        context, "success", "Your Booking was success-fully", "OK");
    myBooking(context);
  } else {
    showDialogSingleButton(
        context, "Unabel to Book", "Correct the form data", "OK");
    return null;
  }
}

Future myBooking(BuildContext context) async {
  //use user id to my book
  final url = 'http/mybooking';
  var Token;
  await getToken().then((result) {
    Token = result;
  });

  //select here from booking table with id of userID;
  http.Response response = await http
      .get(url, headers: {HttpHeaders.authorizationHeader: "Token $Token"});
  if (response.statusCode == 200) {
    final responseJson = jsonDecode(response.body);

    Map<String, dynamic> myBooking = {
      'busName': responseJson['bus_name'],
      'bookId': responseJson['id'],
      'from': responseJson['from'],
      'to': responseJson['to'],
      'departureTime': responseJson['departureTime'],
      'price': responseJson['price'],
      'status': responseJson['status']
    };
    Navigator.pushReplacement(
        context,
        new MaterialPageRoute(
            builder: (BuildContext context) => new MyBookingPage(myBooking)));
  }
}

Future deleteBooking(BuildContext context, Map<String, dynamic> body) {}
