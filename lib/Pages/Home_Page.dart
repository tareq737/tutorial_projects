import 'package:flutter/material.dart';
import 'package:tutorial_search/Pages/Search_Backend.dart';
import 'package:tutorial_search/Pages/Search_Local.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Expanded(flex: 3,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return SearchLocal();
                      },
                    ),
                  );
                },
                child: Text("Search from Local",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
              ),
            ),Spacer(),
            Expanded(flex: 3,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const SearchBackend();
                      },
                    ),
                  );
                },
                child: Text("Search from Backend",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
              ),
            ),Spacer(),
          ],
        ),
      ),
    );
  }
}
