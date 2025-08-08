import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static SharedPrefHelper? _instance;
  static SharedPreferences? _prefs;

  SharedPrefHelper._internal();

  static Future<SharedPrefHelper> getInstance() async {
    _instance ??= SharedPrefHelper._internal();
    _prefs ??= await SharedPreferences.getInstance();
    return _instance!;
  }

  // Save String
  Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  // Get String
  String? getString(String key) {
    return _prefs?.getString(key);
  }

  // Save Int
  Future<void> setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  // Get Int
  int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  // Save Boolean
  Future<void> setBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  // Get Boolean
  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  // Save List (as JSON)
  Future<void> setList(String key, List<String> value) async {
    await _prefs?.setStringList(key, value);
  }

  // Get List
  List<String>? getList(String key) {
    return _prefs?.getStringList(key);
  }

  // Remove a key
  Future<void> remove(String key) async {
    await _prefs?.remove(key);
  }

  // Clear all preferences
  Future<void> clear() async {
    await _prefs?.clear();
  }
}