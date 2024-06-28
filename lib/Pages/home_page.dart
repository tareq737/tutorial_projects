import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_theme_provider/Provider/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theme Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            provider.toggleTheme();
          },
          child: Text("Change the theme"),
        ),
      ),
    );
  }
}
