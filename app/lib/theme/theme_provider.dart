import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData providerThemeData = lightMode;
  static const String _themeKey = 'theme';
  bool _isDarkMode = false;

  ThemeProvider() {
    _loadTheme();
  }

  ThemeData get themeData => providerThemeData;
  bool get isDarkMode => _isDarkMode;

  set themeData(ThemeData themeData) {
    providerThemeData = themeData;
    _saveTheme();
    notifyListeners();
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    if (_isDarkMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }

  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(_themeKey, _isDarkMode);
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool(_themeKey) ?? false;
    _isDarkMode = isDarkMode;
    themeData = isDarkMode ? darkMode : lightMode;
  }
}
