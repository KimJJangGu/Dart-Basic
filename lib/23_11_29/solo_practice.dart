//다음의 함수가 실행될 수 있도록 Class Person을 작성하시오
class Person{

  var name;
  var age;

  Person(this.name, this.age);

  void printInfo(){
    print('name: $name, age: $age');
  }
}

void main() {
  var person = Person('John Doe', 30);
  person.printInfo();

  var person2 = Person('Do Hyeon', 27);
  person2.printInfo();
}