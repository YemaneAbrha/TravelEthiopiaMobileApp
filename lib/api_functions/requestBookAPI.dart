import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:Guzo/functions/showSingleButtonDialog.dart';
import 'package:Guzo/functions/getUserInfo.dart';
import 'package:Guzo/model/json/availiable.dart';

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

Future<List<Availiable>> allDeparture(BuildContext context) async {
  try {
    final url = 'guzoethiopia.net/book';
    http.Response response = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: "Bearer $Token",
      "Accept": "application/json",
    });
    final datas = jsonDecode(response.body);
    List<Availiable> departures = [];
    for (var data in datas) {
      Availiable availiable = Availiable(
          data["id"],
          data["from"],
          data["to"],
          data["daparture_date"],
          data["departure_time"],
          data["bus_name"],
          data["fee"],
          data["availiable_seat"]);
      departures.add(availiable);
    }

    return departures;
  } catch (e) {
    final jsonBuses = [
      {
        "id": 1212121212,
        "bus_title": "Selam Bus",
        "from": "Addis Ababa",
        "to": "Asmera",
        "fee": 1100.0,
        "bus_name": "Selam Bus",
        "availiable_seat": 21,
        "daparture_date": "After Tommorow",
        "departure_time": "Mornig"
      },
      {
        "id": 121212121,
        "bus_title": "Selam Bus",
        "from": "Addis Ababa",
        "to": "Asmera",
        "fee": 1100.0,
        "bus_name": "Selam Bus",
        "availiable_seat": 21,
        "daparture_date": "After Tommorow",
        "departure_time": "Mornig"
      }
    ];

    List<Availiable> departures = [];
    for (var data in jsonBuses) {
      Availiable availiable = Availiable(
          data["id"],
          data["from"],
          data["to"],
          data["daparture_date"],
          data["departure_time"],
          data["bus_name"],
          data["fee"],
          data["availiable_seat"]);
      departures.add(availiable);
    }

    showDialogSingleButton(context, "Error", "Server Error", "Ok");

    return departures;
  }
}

Future requesBookAPI(BuildContext context, Map<String, dynamic> body) async {
  print(body.runtimeType);
  final url = 'guzoethiopia.net/book';
  http.Response response = await http.post(
    url,
    body: body,
    headers: {HttpHeaders.authorizationHeader: "Bearer $Token"},
  );
  if (response.statusCode == 200) {
    showDialogSingleButton(
        context, "success", "Your Booking was success-fully", "OK");
    Navigator.pushReplacementNamed(context, "/mybooking");
  } else {
    showDialogSingleButton(
        context, "Unabel to Book", "Correct the form data", "OK");
    Navigator.pushReplacementNamed(context, "/mybooking");
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
