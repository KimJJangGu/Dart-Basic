class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}

void main() {
  final Person person1 = Person(name: '홍길동', age: 20);
  final Person person2 = Person(name: '한석봉', age: 25);

  Map<dynamic> Persons = {
    '홍길동': 20,
    '한석봉': 25
  };

}
