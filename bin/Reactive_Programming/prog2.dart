import 'dart:async';

void main() {
 // listen();
 // listenError();
 // awaitFor();
 // isEmpty();
 // getFirst();
 // getLast();
 // getSet();
 // getLength();
  getAny();
}

void listen() {
  var sum = 0;
  getNumbers().listen((data) {
    sum += data;
  }).onDone(() {
    print(sum);
  });
}

void listenError(){
  getNumbersException().listen((data){
    print(data);
  }).onError((error){
    print('an error occured ');
  });
}

void awaitFor() async{
  var sum = 0;
  await for(var number in getNumbers()){
    sum += number;
  }
  print(sum);
}

void isEmpty() async{
  if(await getNumbers().isEmpty){
    print('Stream is Empty');
  }else{
    print('Stream has something');
  }
}

void getFirst() async{
  print(await getNumbers().first);
}

void getLast() async{
  print(await getNumbers().last);
}

void getSet() async{
  print(await getNumbers().toSet());
}

void getLength() async{
  print(await getNumbers().length);
}

void getAny() async{
  if(await getNumbers().any((int i)=>i==3)){
    print('there is a value is equal to 3');
  }else{
    print('no 3');
  }
}

Stream<int> getNumbers() async* {
  for (var i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> getNumbersException() async* {
  for (var i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
    if(i == 2){
      throw Exception();
    }
  }
}

