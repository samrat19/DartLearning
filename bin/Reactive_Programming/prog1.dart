import 'dart:async';

void main() {
  getNumbers().listen(
    (onData) {
      print(onData);
    },
  );
}

Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    yield i;
    await Future.delayed(
      Duration(seconds: 1),
    );
  }
}
