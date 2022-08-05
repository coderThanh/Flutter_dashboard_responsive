import 'package:flutter/material.dart';

import 'models/theme_data_dark.dart';
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
      darkTheme: themeDataDark,
      home: const HomeScreen(),
    );
  }
}
