import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static Future init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if(!sharedPreferences.containsKey('token')){
      await setString(key: 'token', value: '');
    }
  }

  static Future<bool> setString({required String key, required String value}) async {
    return sharedPreferences.setString(key, value);
  }

  static String? getString({required String key}) {
    return sharedPreferences.getString(key);
  }
}