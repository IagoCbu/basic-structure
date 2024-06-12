import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTheme {
  ThemeData get theme => ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.purple,
      onSecondary: Colors.white,
      surface: Colors.white,
      onSurface: Colors.blue,
      error: Colors.red,
      onError: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      elevation: 4,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0xFF60B7FF),
      ),
    ),
  );
}