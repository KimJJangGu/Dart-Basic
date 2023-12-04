class Wand {
  String _name;
  double _power;

  Wand({required String name, required double power})
      : _name = name,
        _power = power;

  String get name => _name;

  double get power => _power;

  set name(String name) {
    if (name.length < 3) {
      throw Exception('이름은 3글자 이상이어야 합니다.');
    }
    _name = name;
  }

  set power(double power) {
    if (power < 0.5) {
      throw Exception('마력이 0.5 이하입니다.');
    }
    _power = power;
  }
}