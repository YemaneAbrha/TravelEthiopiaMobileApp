import 'package:shared_preferences/shared_preferences.dart';

Future<String> getToken() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String getToken = await preferences.getString("LastUserToken");
  return getToken;
}

Future<Map<String, dynamic>> getUser() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isAuthenticate = await preferences.getBool("isAuthenticate");
  String name = await preferences.getString("LastUserName");
  String phoneNumber = await preferences.getString("LastUserPhoneNumber");
  String password = await preferences.getString("LastUserPassword");
  String id = await preferences.getString("LastUserId");

  Map<String, dynamic> info = {
    'isAuthenticate': isAuthenticate,
    'id': id,
    'name': name,
    'phoneNumber': phoneNumber,
    'password': password,
    'id': id,
  };

  return info;
}

Future<bool> isAuthenticate() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool _isAuthenticate = await preferences.getBool('isAuthenticate');

  // return (!_isAuthenticate || _isAuthenticate == null)
  //     ? false
  //     : _isAuthenticate;
  print(" AAAAAAAAAAAA Haderaka chercher addis Ababaa cherhcer addus ababa");
  print(_isAuthenticate);
  if (_isAuthenticate != null) {
    return _isAuthenticate;
  } else {
    return false;
  }
}
