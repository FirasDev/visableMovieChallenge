import 'package:flutter/material.dart';

class MovieThemeData {
  MovieThemeData._();

  /// Returns a [ThemeData] object based on the [MovieThemeData] object.
  static ThemeData get lightThemeData {
    return ThemeData(primaryColor: Colors.deepPurple.shade900);
  }
}
