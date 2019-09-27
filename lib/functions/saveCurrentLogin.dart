import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_ethiopia/model/json/loginModel.dart';

saveCurrentLogin(Map responseJson) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  // if ((responseJson != null && !responseJson.isEmpty)) {
  //   user = LoginModel.fromJson(responseJson).userName;
  // } else {
  //   user = '';
  // }
  var user = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).userName
      : "";
  var token = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).token
      : "";
  var id = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).userId
      : '';
  var email = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).email
      : '';
  await preferences.setString(
      'LastUserName', (user != null && user.length > 0) ? user : '');
  await preferences.setString(
      'LastUserToken', (token != null && token.length > 0) ? token : '');
  await preferences.setString(
      'LastUserId', (id != null && id.length > 0) ? id : '');
  await preferences.setString(
      'LastUserEmail', (email != null && email.length > 0) ? email : '');
}
