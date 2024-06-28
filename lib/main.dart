import 'package:flutter/material.dart';
import 'package:tutorial_theme_provider/Pages/home_page.dart';
import 'package:tutorial_theme_provider/Provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
