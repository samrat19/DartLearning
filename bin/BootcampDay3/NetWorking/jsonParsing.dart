import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async{

  final String demoUrl = 'https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=3fc464c420834d6fb76899f176e1ae6d';
  var response = await http
      .get(Uri.encodeFull(demoUrl), headers: {'Accept': 'application/json'});

  var convertDataToJson = json.decode(response.body);

  List data = convertDataToJson['articles'];
  print(data);
}