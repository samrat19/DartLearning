import 'dart:convert';
import 'dart:io';
import 'dart:async';

main() async{
  Uri apiUri = Uri.parse('https://swapi.co/api/people/1');
  HttpClientRequest httpClientRequest = await HttpClient().getUrl(apiUri);
  HttpClientResponse response = await httpClientRequest.close();
  Stream resStream  = response.transform(Utf8Decoder());

  await for(var data in resStream){
    print('$data \n');
  }
}