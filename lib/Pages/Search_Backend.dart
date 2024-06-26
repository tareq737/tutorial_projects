import 'package:flutter/material.dart';
import 'package:tutorial_search/Services/us_states_services.dart';

class SearchBackend extends StatefulWidget {
  const SearchBackend({super.key});

  @override
  State<SearchBackend> createState() => _SearchUiWithBackendState();
}

class _SearchUiWithBackendState extends State<SearchBackend> {
  String lexem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            setState(() {
              lexem = value;
            });
          },
        ),
      ),
      body: FutureBuilder(
        future: searchInStates(lexem: lexem),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].name),
                leading: Text(snapshot.data![index].id.toString()),
                subtitle: Text(snapshot.data![index].capital),
                trailing: Text(snapshot.data![index].time_zone),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
