import 'wand.dart';

// 2개의 클래스 “Wizard (마법사)”, “Wand (지팡이)” 를 작성, 마법사는 지팡이를 들 수 있다
class Wizard {
  String _name;
  Wand _wand;
  int _hp;
  int _mp;

  Wizard(
      {required String name, required wand, required int hp, required int mp})
      : _name = name,
        _wand = wand,
        _hp = hp,
        _mp = mp;

  String get name => _name;

  get wand => _wand;

  int get hp => _hp;

  int get mp => _mp;

  set name(String name) {
    if (name.length < 3) {
      throw Exception('이름은 3글자 이상이어야 합니다.');
    }
    _name = name;
  }

  set mp(int mp) {
    if (mp < 0) {
      throw Exception('MP가 0입니다.');
    }
    _mp = mp;
  }

  set hp(int hp) {
    if (hp < 0) {
      _hp = 0;
    }
  }
}