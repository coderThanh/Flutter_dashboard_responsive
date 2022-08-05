import 'package:flutter/material.dart';

import 'theme_style_mobdel.dart';
import 'theme_text_style_model.dart';

ThemeData themeDataDark = ThemeData(
  primaryColor: ThemeStyleDark.primary,
  textTheme: themeTextDark,
  splashColor: Colors.white12,
  hoverColor: Colors.white.withOpacity(0.04),
  backgroundColor: ThemeStyleDark.surface,
  brightness: Brightness.dark,
);
