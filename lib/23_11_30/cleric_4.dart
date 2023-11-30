import 'dart:math';

class Cleric{
  String name;
  int hp = 50;
  int mp = 10;
  final maxhp = 50;
  final maxmp = 10;


  Cleric(this.name);


  void selfAid(){
    if(mp < 5){
      print('MP가 부족합니다.');
    } else{
      print('MP를 5 소비하고, HP를 최대로 회복했다. \nHP: $maxhp, MP: $mp');
      mp -= 5;
    }
  }


  int pray(int sec){
    int heal = Random().nextInt(3);
    int lastmp = 0;
    mp += heal + sec;
    if(mp <= 10){
      print('$sec초 기도하여 MP를 ${heal + sec}만큼 회복했다.\n현재 MP: ${mp}');
    } else{
      print('$sec초 기도하여 ${lastmp}만큼 회복, MP를 현재 MP: $maxmp, 최대치입니다.');
    }

    return lastmp;
  }
}

void main(){
  Cleric cleric = Cleric('고블린');
  print(cleric);

  cleric.selfAid();
  cleric.selfAid();
  cleric.selfAid();

  cleric.pray(1);
  cleric.pray(1);
  cleric.pray(1);
  cleric.pray(1);
  cleric.pray(1);
  cleric.pray(1);
  cleric.pray(1);
}