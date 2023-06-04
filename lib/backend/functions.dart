import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:technewss/components/searchbar.dart';
import 'package:technewss/utils/key.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse('https://newsapi.org/v2/top-headlines?country=us&category=technology&pageSize=100&apiKey=' +
        Key.key +
        '&q=' +
        SearchBars.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}