import 'package:untitled/23_12_05/%EA%B3%BC%EC%A0%9C/slime.dart';
import 'hero.dart';

// PoisonSlime 클래스를 작성
class PoisonSlime extends Slime {
  int poisonAttack = 5;

  PoisonSlime(super.slime);

  @override
  void attack(Hero hero) {
    super.attack(hero);

    if(poisonAttack <= 5 && poisonAttack > 0) {
      print('추가로, 독 포자를 살포했다!');
      poisonAttack -= 1;
      print('독 공격 남은 횟수: $poisonAttack');
    }
      print('용사의 남은 HP: ${hero.hp}');
  }
}

void main() {
  // PoisonSlime 는 아래의 코드로 인스턴스화 되는 클래스
  PoisonSlime poisonSlime = PoisonSlime('포이즌 킹');

  // PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다
  Hero hero = Hero('주먹왕', 100);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
}
