// late : 초기화를 나중에 하겠다는 표시를 하는 역할
import 'dart:math';

class Person {
  late String name;

  void sayHello() {
    print('Hello, my name is $name');
  }
}


void main() {
  var person = Person();
  person.name = 'Alice';
  person.sayHello();

  // final 변수
  final int finalValue = Random().nextInt(10);
  print("finalValue: $finalValue");

  // const 변수
  const int constValue = 5;
  print("constValue: $constValue");

  // final 변수 재할당 (오류)
  // finalValue = 10;

  // const 변수 재할당 (오류)
  // constValue = 10;

  // final 변수 변경
  final int finalNewValue = finalValue + 5;
  print("finalNewValue: $finalNewValue");

  // const 변수 변경 (오류)
  // const int constNewValue = constValue + 5;
}