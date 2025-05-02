import 'package:flutter/material.dart';
import 'screens/language_grid_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Languages App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: LanguageGridScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
