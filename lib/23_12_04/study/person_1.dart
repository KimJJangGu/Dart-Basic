// 이름을 가지는 Person 클래스를 작성, Person 은 반드시 이름을 포함해야 한다
class Person {
  String name;

  Person(this.name);
}

// 이름이 ‘홍길동', ‘한석봉'인 Person 인스턴스를 생성하고, List에 담는다

void main() {
  final Person gilDong = Person('홍길동');
  final Person seokBong = Person('한석봉');

  List<Person> persons = [gilDong, seokBong];

  // print(persons);

  // List에 담긴 모든 Person 인스턴스의 이름을 표시
  final iterator = persons.iterator;
  while (iterator.moveNext()) {
    print(iterator.current.name);
  }
}
