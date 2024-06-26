import 'package:flutter/material.dart';
import 'package:search_from_inside_and_outside_backend/Pages/Search_Backend.dart';
import 'package:search_from_inside_and_outside_backend/Pages/Search_Local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchBackend(),
    );
  }
}