import 'package:http/http.dart' as http;

void runNetwork() async{

  var data = 0;

  final demoUrl = 'https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=3fc464c420834d6fb76899f176e1ae6d';

 // var convertDataToJson = json.decode(response.body);

 // List data = convertDataToJson['articles'];
  for(var i = 1; i <= 100 ; i++){
    print(data == 0 ? 'fetching' : 'fetched');
    print('outer i value: $i');
    if(data == 200){
      print('if i value: $i');
      break;
    }else{
      print('else i value: $i');
      data = await getData(demoUrl);
    }

    if(i == 100 && data == 0){
      print('network issue');
    }
  }
}

Future<int> getData(String demoUrl)async{
  var code = await http.get(
      Uri.encodeFull(demoUrl), headers: {'Accept': 'application/json'});
  return code == null?3:code.statusCode;
}