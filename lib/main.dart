import 'package:dashboard_responsive_flutter/models/theme_style.dart';
import 'package:flutter/material.dart';

import 'models/theme_text_style.dart';
import 'views/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Responsive',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        primaryColor: ThemeStyleDark.primary,
        textTheme: themeTextDark,
        splashColor: Colors.white12,
        hoverColor: Colors.white.withOpacity(0.04),
        backgroundColor: ThemeStyleDark.surface,
        brightness: Brightness.dark,
      ),
      home: const HomeScreen(),
    );
  }
}
