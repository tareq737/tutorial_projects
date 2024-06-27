import 'package:flutter/material.dart';
import 'package:tutorial_search/Pages/Home_Page.dart';
import 'package:tutorial_search/Pages/Search_Backend.dart';
import 'package:tutorial_search/Pages/Search_Local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SearchBackend(),
    );
  }
}