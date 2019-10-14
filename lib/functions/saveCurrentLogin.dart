import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_ethiopia/model/json/loginModel.dart';

saveCurrentLogin(Map responseJson) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var user = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).fullName
      : "";
  var token = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).token
      : "";
  var id = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).userId
      : '';
  var phoneNumber = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).phoneNumber
      : '';
  await preferences.setString(
      'LastUserName', (user != null && user.length > 0) ? user : '');
  await preferences.setString(
      'LastUserToken', (token != null && token.length > 0) ? token : '');
  await preferences.setString(
      'LastUserId', (id != null && id.length > 0) ? id : '');
  await preferences.setString('LastUserPhoneNumber',
      (phoneNumber != null && phoneNumber.length > 0) ? phoneNumber : '');
}
