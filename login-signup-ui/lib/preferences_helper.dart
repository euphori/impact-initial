import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SharedPreferencesHelper {

  static Future setInteger(String key, int value) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.setInt(key, value);
  }

  static Future<int> getInteger(String key) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.getInt(key) ?? 0;
  }

  static Future setDouble(String key, double value) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.setDouble(key, value);
  }

  static Future<double> getDouble(String key) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.getDouble(key) ?? 0;
  }

  static Future setString(String key, String value) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.setString(key, value);
  }

  static Future<String> getString(String key) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.getString(key) ?? 0;
  }

  static Future setBool(String key, bool value) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.setBool(key, value);
  }

  static Future<bool> getBool(String key) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.getBool(key) ?? 0;
  }

  static Future<SharedPreferences> get _prefs => SharedPreferences.getInstance();
}

class Prefs {

  static Future<String> getEmail(String key) => SharedPreferencesHelper.getString(key);

  static Future setEmail(String key, String value) => SharedPreferencesHelper.setString(key, value);

  static Future<String> getUsername(String key) => SharedPreferencesHelper.getString(key);

  static Future setUsername(String key, String value) => SharedPreferencesHelper.setString(key, value);

  static Future<String> getPassword(String key) => SharedPreferencesHelper.getString(key);

  static Future setPassword(String key, String value) => SharedPreferencesHelper.setString(key, value);

  static Future<String> getName(String key) => SharedPreferencesHelper.getString(key);

  static Future setName(String key, String value) => SharedPreferencesHelper.setString(key, value);

  static Future<String> getCity(String key) => SharedPreferencesHelper.getString(key);

  static Future setCity(String key, String value) => SharedPreferencesHelper.setString(key, value);

  static Future<String> getCountry(String key) => SharedPreferencesHelper.getString(key);

  static Future setCountry(String key, String value) => SharedPreferencesHelper.setString(key, value);

  Future<void> clear() async {
    await Future.wait(<Future>[
      setEmail('', ''),
      setUsername('', ''),
      setPassword('', ''),
      setName('', ''),
      setCity('', ''),
      setCountry('', ''),
    ]);
  }
}