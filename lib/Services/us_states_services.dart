import 'package:dio/dio.dart';
import 'package:tutorial_search/Model/us_states_Model.dart';


Future<List<States>> getDataOfStates() async {
  Dio dio = Dio();
  Response response = await dio.get("https://freetestapi.com/api/v1/us-states");
  if (response.statusCode == 200) {
    List<States> states = [];
    for (var i = 0; i < response.data.length; i++) {
      states.add(States.fromMap(response.data[i]));
    }
    return states;
  } else {
    return [];
  }
}

Future<List<States>> searchInStates({String lexem =''}) async {
  Dio dio = Dio();
  Response response = await dio.get("https://freetestapi.com/api/v1/us-states?search=${lexem}");
  if (response.statusCode == 200) {
    List<States> states = [];
    for (var i = 0; i < response.data.length; i++) {
      states.add(States.fromMap(response.data[i]));
    }
    return states;
  } else {
    return [];
  }
}
