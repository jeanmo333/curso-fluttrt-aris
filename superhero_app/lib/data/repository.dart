import 'dart:convert';

import 'package:superhero_app/data/model/superhero_response.dart';
import 'package:http/http.dart' as http;

class Repository {
  Future<SuperheroResponse?> fetchSuperheroInfo(String name) async {
    final response = await http.get(Uri.parse(
        "https://superheroapi.com/api/c4552eac8509d2385cd940ab2a797ecd/search/$name"));

    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      SuperheroResponse superheroResponse =
          SuperheroResponse.fromJson(decodedJson);
      return superheroResponse;
    } else {
      return null;
    }
  }
}
