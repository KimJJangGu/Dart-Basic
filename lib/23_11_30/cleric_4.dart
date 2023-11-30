import 'dart:math';

class Cleric{
  String name;
  int hp;
  int mp;
  final maxhp;
  final maxmp;


  Cleric(this.name, this.hp, this.maxhp, this.mp, this.maxmp);

  void selfAid(){
    hp = 50;
    print('$name은 MP를 5 소비하고, HP를 최대로 회복했다.');
  }

  int heal = Random().nextInt(3);
  int sec =  Random().nextInt(4);

  void pray(){
    print('$name은 $sec초 기도하여 MP를 $heal만큼 회복했다.');
  }
}

void main(){
  Cleric cleric = Cleric('김도현', 50, 50, 10, 10);
  print(cleric);

  cleric.selfAid();

  cleric.pray();
}