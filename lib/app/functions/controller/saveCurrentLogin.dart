// import 'package:Guzo/functions/getUserInfo.dart';
// import 'package:Guzo/app/functions/getUserInfo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Guzo/app/functions/model/json/loginModel.dart';

saveCurrentLogin(Map responseJson) async {
  print("saveCurrentLogin function");
  // print(responseJson['data']['user']['name']);

  SharedPreferences preferences = await SharedPreferences.getInstance();
  var name = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).name
      : "";
  var token = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).token
      : "";
  var id = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).id
      : '';
  var phoneNumber = (responseJson != null && responseJson.isNotEmpty)
      ? LoginModel.fromJson(responseJson).phoneNumber
      : '';
  await preferences.setString(
      'LastUserName', (name != null && name.length > 0) ? name : '');
  await preferences.setString(
      'LastUserToken', (token != null && token.length > 0) ? token : '');
  await preferences.setString(
      'LastUserId', (id != null && id.length > 0) ? id : '');
  await preferences.setString('LastUserPhoneNumber',
      (phoneNumber != null && phoneNumber.length > 0) ? phoneNumber : '');
  await preferences.setBool("isAuthenticate", true);
  // final info = getUser();
  // Map<String, dynamic> info = await getUser();
}
