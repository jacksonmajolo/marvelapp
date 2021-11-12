import 'package:shared_preferences/shared_preferences.dart';

abstract class ISessionService {
  Future<bool> set(String key, dynamic value);
  Future<Object?> get(String key);
  Future<bool> remove(String key);
  Future<bool> clear();
}

class SharedPreferencesService implements ISessionService {
  @override
  Future<bool> set(String key, dynamic value) async {
    if (value is String) {
      return _setString(key, value);
    } else if (value is bool) {
      return _setBoolean(key, value);
    } else if (value is int) {
      return _setInt(key, value);
    } else if (value is double) {
      return _setDouble(key, value);
    } else {
      throw Exception('Type not implemented!');
    }
  }

  Future<bool> _setString(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }

  Future<bool> _setBoolean(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  Future<bool> _setInt(String key, int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, value);
  }

  Future<bool> _setDouble(String key, double value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setDouble(key, value);
  }

  @override
  Future<Object?> get(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  @override
  Future<bool> remove(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  @override
  Future<bool> clear() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }
}
