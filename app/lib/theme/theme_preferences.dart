import 'package:shared_preferences/shared_preferences.dart';

// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
class ThemePreferences {
  static const String _themeKey = 'theme';

  static Future<void> saveTheme(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(_themeKey, isDarkMode);
  }

  static Future<bool> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_themeKey) ?? true; // Default dark
  }
}
