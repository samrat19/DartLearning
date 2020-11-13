class MyClass{
  final int a;
  final int b;

  const MyClass({this.a,this.b});

  void add() => print(a+b);
}

void useConstructor(){
  MyClass(a: 2,b: 3).add();
}