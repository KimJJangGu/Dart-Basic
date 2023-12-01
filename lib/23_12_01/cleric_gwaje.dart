// 2-1 최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가
class Cleric {
  String name;
  int hp = 50;
  int mp = 10;

  // const로 값을 먼저 지정해야 됨
  static const int maxHP = 50;
  static const int maxMP = 10;

  // static이란 일반 객체를 만들 때 같이 메모리에 저장하는 것이 아닌 따로 메모리를 둠
  // static 구문을 객체가 공유하여 사용할 수 있게 해주는 구문

  // static 키워드는 변수나 메소드에 사용
  // static 키워드를 사용하면 클래스가 메모리에 로딩될 때 자동으로 생성
  // static은 instance에 귀속되지 않고 class에 귀속
  // 객체를 생성하지 않아도 사용이 가능하며, 속도가 빠르다

  Cleric(this.name, {this.hp = maxHP, this.mp = maxMP});

  // {} 으로 감싸져 있다.
  // {} 안에 있는 값은 옵셔널이다.
  // 값을 할당하려면 ":" 을 꼭 붙여야 한다.
}

void main() {
  final cleric1 = Cleric('아서스', hp: 40, mp: 5);

  // 이름과 HP만 지정하여 인스턴스화, MP는 최대 MP와 같은 값이 초기화
  final cleric2 = Cleric('아서스', hp: 35);

  // 이름만 지정하여 인스턴스화, HP, MP는 최대 HP와 최대 MP로 초기화
  final cleric3 = Cleric('아서스');

  // Cleric()과 같이 이름을 지정하지 않는 경우 인스턴스화 할 수 없다
  // final cleric4 = Cleric();
}