class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  final maxhp = 50;
  final maxmp = 10;


  Cleric(this.name);


  void selfAid() {
    if (mp < 5) {
      print('MP가 부족합니다.');
    } else {
      print('MP를 5 소비하고, HP를 최대로 회복했다. \nHP: $maxhp, MP: $mp');
      mp -= 5;
    }
  }
}