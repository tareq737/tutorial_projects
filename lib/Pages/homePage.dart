import 'package:bloc_app/Pages/CounterPage.dart';
import 'package:bloc_app/Pages/OnOffPage.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const OnOffPage();
                    },
                  ),
                );
              },
              child: const Text('On / Off'),
            ),
           
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Counterpage();
                    },
                  ),
                );
              },
              child: const Text('Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
