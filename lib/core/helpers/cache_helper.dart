import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  CacheHelper._();
  static Future init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (!sharedPreferences.containsKey('token')) {
      await setString(key: 'token', value: '');
    }
    if (!sharedPreferences.containsKey('userId')) {
      await setString(key: 'userId', value: '');
    }
  }

  static Future<bool> setString(
      {required String key, required String value}) async {
    return sharedPreferences.setString(key, value);
  }

  static Future<void> removeString(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  static get token => sharedPreferences.getString('token');

  static get userId => sharedPreferences.getString('userId');
}
