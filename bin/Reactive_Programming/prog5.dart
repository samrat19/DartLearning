import 'dart:async';

StreamController<String> _streamController = StreamController<String>.broadcast();
Stream<String> get out => _streamController.stream;

void main(){
  out.listen((onData) => print(onData));

  out.listen((onData) => print(onData.replaceAll('e', 'a')));

  _streamController.sink.add('event');
}