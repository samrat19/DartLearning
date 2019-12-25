void main() {
  // getExpand();
  // getMap();
  // getSkip();
  // getSkipWhile();
  // getTake();
  // getTakeWhile();
  // getWhere();
   getDistinct();
}

void getExpand() async {
  getNumbers()
      .expand((data) => [data, data * 10])
      .listen((item) => print(item));
}

void getMap() async {
  getNumbers().map((data) => data * 10).listen((onData) => print(onData));
}

void getSkip() async {
  getNumbers().skip(1).listen((onData) => print(onData));
}

void getSkipWhile() async {
  getNumbers().skipWhile((test) => test < 2).listen((onData) => print(onData));
}

void getTake() async {
  getNumbers().take(2).listen((onData) => print(onData));
}

void getTakeWhile() async {
  getNumbers()
      .takeWhile((test) => test % 2 != 0)
      .listen((onData) => print(onData));
}

void getWhere() async{
  getNumbers()
      .where((test) => test % 2 != 0)
      .listen((onData) => print(onData));
}

void getDistinct() async{
  getNumbersDuplicate().distinct().listen((onData) => print(onData));
}

Stream<int> getNumbers() async* {
  for (var i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> getNumbersDuplicate() async* {
  for (var i = 1; i <= 3; i++) {
    yield i;
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> getNumbersException() async* {
  for (var i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
    if (i == 2) {
      throw Exception();
    }
  }
}
