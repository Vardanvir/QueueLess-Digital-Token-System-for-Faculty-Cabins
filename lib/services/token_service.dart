import 'package:shared_preferences/shared_preferences.dart';

class TokenService {

  static Future<void> saveToken(int token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('token', token);
  }

  static Future<int?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('token');
  }

  static Future<void> updateToken(int token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('token', token);
  }
}