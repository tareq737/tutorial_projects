import 'package:flutter/material.dart';
import 'package:tutorial_search/Model/us_states_Model.dart';
import 'package:tutorial_search/Services/us_states_services.dart';

class SearchLocal extends StatelessWidget {
  SearchLocal({super.key});

  List<States> searchResult = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getDataOfStates(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            searchResult = snapshot.data!;
            return StatefulBuilder(builder: (context, setstate) {
              return Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      searchResult = [];
                      setstate(() {
                        snapshot.data!.forEach((element) {
                          if (element.name.contains(value)) {
                            searchResult.add(element);
                          }
                        });
                      });
                    },
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: searchResult!.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(searchResult![index].name),
                        subtitle: Text(searchResult![index].capital),
                        leading: Text(searchResult![index].id.toString()),
                        trailing: Text(searchResult![index].time_zone),
                      ),
                    ),
                  ),
                ],
              );
            });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
