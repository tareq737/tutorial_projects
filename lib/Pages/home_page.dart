import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Theme change",
              style: TextStyle(fontSize: 20),
            ),
            Icon(Icons.settings),
          ],
        ),
      ),
      body:  Center(
        child: ElevatedButton(onPressed:(){} ,child: Text("Change"),),
      ),
    );
  }
}
