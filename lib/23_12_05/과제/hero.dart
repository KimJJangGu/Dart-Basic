import 'slime.dart';

class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack(Slime slime) {
    print('$name이 $Slime을 공격했다.');
    print('10의 데미지');
    slime.hp -= 10;
  }
}

void main() {
  Hero hero = Hero('용사', 50);
}