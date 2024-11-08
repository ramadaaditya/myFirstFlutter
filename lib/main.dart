import 'package:flutter/material.dart';
import 'package:submovie/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SubFlutter',
      theme: ThemeData(
        primaryColor: const Color(0xFF242A32),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF242A32),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        scaffoldBackgroundColor: const Color(0xFF242A32),
        textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.white),
        ),
        cardTheme: const CardTheme(
          color: Color(0xFF242A32),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
