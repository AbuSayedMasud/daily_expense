import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static const String _keyUsername = 'saved_username';
  static const String _keyIsChecked = 'isChecked';

  /// Save username and checkbox state
  static Future<void> saveData(String username, bool isChecked) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (isChecked) {
      await prefs.setString(_keyUsername, username);
      await prefs.setBool(_keyIsChecked, isChecked);
    } else {
      await prefs.remove(_keyUsername);
      await prefs.remove(_keyIsChecked);
    }
  }

  /// Load saved username and checkbox state
  static Future<Map<String, dynamic>> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString(_keyUsername);
    bool isChecked = prefs.getBool(_keyIsChecked) ?? false;
    return {'username': username ?? '', 'isChecked': isChecked};
  }
}
