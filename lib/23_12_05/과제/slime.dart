import 'hero.dart';

class Slime {
  final String suffix;
  int hp = 50;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임 $suffix이 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

void main() {
  Slime slime = Slime('슬라임');
}