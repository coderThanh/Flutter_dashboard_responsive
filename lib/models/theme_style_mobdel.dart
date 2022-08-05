import 'package:flutter/material.dart';

abstract class ThemeStyle {}

class ThemeStyleDark extends ThemeStyle {
  static Color primary = const Color(0xFF2697FF);
  static Color secondary = const Color(0xFF2A2D3E);
  static Color surface = const Color(0xFF212332);
  static Color surface70 = const Color(0xFF2B2E44);
  static Color onSurface = Colors.white;

  static double padding = 16.0;
  static double radius = 10;
}
