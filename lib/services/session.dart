import 'package:shared_preferences/shared_preferences.dart';

abstract class ISessionService {
  Future<bool> set(String key, dynamic value);
  Future<Object?> get(String key);
  Future<bool> remove(String key);
  Future<bool> clear();
}

class SharedPreferencesService implements ISessionService {
  Future<bool> set(String key, dynamic value) async {
    if (value is String) {
      return await _setString(key, value);
    } else if (value is bool) {
      return await _setBoolean(key, value);
    } else if (value is int) {
      return await _setInt(key, value);
    } else if (value is double) {
      return await _setDouble(key, value);
    } else {
      throw new Exception('Type not implemented!');
    }
  }

  Future<bool> _setString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(key, value);
  }

  Future<bool> _setBoolean(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(key, value);
  }

  Future<bool> _setInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setInt(key, value);
  }

  Future<bool> _setDouble(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setDouble(key, value);
  }

  Future<Object?> get(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  Future<bool> remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.remove(key);
  }

  Future<bool> clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.clear();
  }
}

class SessionService {
  final ISessionService session;

  SessionService(this.session);

  Future<bool> set(String key, dynamic value) async {
    return await this.session.set(key, value);
  }

  Future<Object?> get(String key) async {
    return await this.session.get(key);
  }

  Future<bool> remove(String key) async {
    return await this.session.remove(key);
  }

  Future<bool> clear() async {
    return await this.session.clear();
  }
}
