import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData providerThemeData = lightMode;
  static const String _themeKey = 'theme';

  ThemeProvider() {
    _loadTheme(); // Load theme
  }

  ThemeData get themeData => providerThemeData;

  set themeData(ThemeData themeData) {
    providerThemeData = themeData;
    _saveTheme(); // Save theme
    notifyListeners();
  }

  void toggleTheme() {
    if (providerThemeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }

  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(_themeKey, providerThemeData == darkMode);
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool(_themeKey) ?? true;
    themeData = isDarkMode ? darkMode : lightMode;
  }
}
