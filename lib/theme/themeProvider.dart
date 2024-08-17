import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/theme/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  bool _isDarkMode = false;

  ThemeData get themeData => _themeData;

  // bool get isDarkMode => _themeData == darkMode;
  bool get isDarkMode => _isDarkMode;

  ThemeData get darkMode => darkMode;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // void toggleTheme() {
  //   if (_themeData == lightMode) {
  //     themeData = darkMode;
  //   } else {
  //     _themeData = lightMode;
  //   }
  // }
  void toggleTheme() {
    if (_isDarkMode) {
      _themeData = lightMode;
      _isDarkMode = false;
    } else {
      _themeData = darkMode;
      _isDarkMode = true;
    }
    notifyListeners();
  }
}
