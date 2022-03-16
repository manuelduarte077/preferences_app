import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  //  Crearme las preferencias
  static late SharedPreferences _prefs;

  // Prppiedades
  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Exponerlos mediante getter y setter
  // Name Preferences
  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(String name) {
    _name = name;
    _prefs.setString('name', name);
  }

  // Dark Mode
  static bool get isDarkMode {
    return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _prefs.setBool('isDarkMode', value);
  }

  // Preferencias de genero
  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int gender) {
    _gender = gender;
    _prefs.setInt('gender', gender);
  }
}
