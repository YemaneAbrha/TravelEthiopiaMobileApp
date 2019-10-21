import 'package:shared_preferences/shared_preferences.dart';

getToken() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  String getToken = await preferences.getString("LastUserToken");
  return getToken;
}

getInfo() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String id = await preferences.getString("id");
  String phoneNumber = await preferences.getString("phoneNumber");
  String user = await preferences.getString("user");
  Map<String, dynamic> info = {
    'id': id,
    'phoneNumber': phoneNumber,
    'user': 'user'
  };
  return info;
}
