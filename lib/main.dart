import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const OurApp());
}

class OurApp extends StatefulWidget {
  const OurApp({super.key});

  @override
  State<OurApp> createState() => _OurAppSate();
}

class _OurAppSate extends State<OurApp> {
  ThemeMode _themeMode = ThemeMode.dark;

  bool _isDarkMode = false;

  void toggle() {
    setState(() {
      _themeMode = _isDarkMode ? ThemeMode.dark : ThemeMode.light;
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: HomeScreen(toggle: toggle),
    );
  }
}
