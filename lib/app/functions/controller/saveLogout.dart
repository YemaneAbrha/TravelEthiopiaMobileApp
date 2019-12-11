import 'package:shared_preferences/shared_preferences.dart';

saveLogout() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  await preferences.setBool("isAuthenticate", false);
  await preferences.remove('LastUser');
  await preferences.remove('LastToken');
  await preferences.remove('LastPhoneNumber');
  await preferences.remove('LastUserId');
}
