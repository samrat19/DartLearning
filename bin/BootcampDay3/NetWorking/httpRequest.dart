import 'dart:convert';
import 'dart:io';

void main() async{
  var apiUri = Uri.parse('https://swapi.co/api/people/1');
  var httpClientRequest = await HttpClient().getUrl(apiUri);
  var response = await httpClientRequest.close();
  var resStream  = response.transform(Utf8Decoder());

  await for(var data in resStream){
    print('$data \n');
  }
}