import 'dart:core';

class MyClass{
  final int a;
  final int b;

  MyClass(this.a, this.b);

  add(){
    print(a+b);
  }

}

main(){
  MyClass myClass = MyClass(4,3);
  myClass.add();
}