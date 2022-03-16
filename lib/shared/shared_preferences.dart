import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  //  Crearme las preferencias
  static late SharedPreferences _prefs;

  // Prppiedades
  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  // Exponerlos mediante getter y setter
  static Future init() async {
    final _prefs = await SharedPreferences.getInstance();
  }
}
