// 2-1 최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가
class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  static int maxHP;
  static int maxMP;


  Cleric(this.name, {required this.maxHP, required this.maxMP});

}

void main() {
  final cleric1 = Cleric('아서스', maxHP: 40, maxMP: 5);

  // 이름과 HP만 지정하여 인스턴스화, MP는 최대 MP와 같은 값이 초기화
  final cleric2 = Cleric('아서스', maxHP: 35);

  // 이름만 지정하여 인스턴스화, HP, MP는 최대 HP와 최대 MP로 초기화
  final cleric3 = Cleric('아서스');

  // Cleric()과 같이 이름을 지정하지 않는 경우 인스턴스화 할 수 없다
  final cleric4 = Cleric();


  print(cleric1);
  print(cleric2);
  print(cleric3);
  print(cleric4);
}