void main() {
  StrongBox<String> strongbox = StrongBox(keyType: KeyType.finger);

  // put() 메서드로 인스턴스를 저장
  strongbox.put('금괴');

  // get() 메서드로 인스턴스를 얻을 있음
  // get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨
  for(int i = 0; i <= 1000000; i++) {
    String? present = strongbox.get();

    if(present != null) {
      print(present);
    }
  }

  print('------------------------------------------------------------------------------------------');

  // 금고에는 1개의 인스턴스를 담을 수 있음
  // print(_present);

  print('------------------------------------------------------------------------------------------');
}

// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의
// 금고 클래스에 담는 인스턴스의 타입은 미정
class StrongBox<E> {
  E? _present;

  // 열쇠의 종류를 나타내는 필드 변수
  KeyType _keyType;

  // 열쇠의 사용 횟수
  int _useKeyCount = 0;

  // 열쇠의 종류를 받는 생성자
  StrongBox({required KeyType keyType}) : _keyType = keyType {
    switch (keyType) {
      case KeyType.padlock:
        _useKeyCount = 1024;
        break;
      case KeyType.button:
        _useKeyCount = 10000;
        break;
      case KeyType.dial:
        _useKeyCount = 30000;
        break;
      case KeyType.finger:
        _useKeyCount = 1000000;
        break;
    }
  }

  // put() 메서드로 인스턴스를 저장
  void put(E present) => _present = present;

  // get() 메서드로 인스턴스를 얻을 있음
  // 금고에서 get() 메서드를 호출할 때 마다 사용 횟수를 카운트
  // 각 열쇠의 사용 횟수에 도달 전에는 null 리턴
  E? get() {
    _useKeyCount--; // 횟수를 카운트
    if (_useKeyCount < 0) {
      return _present;
    } else {
      return null;
    }
  }
}

// 열거형 KeyType을 정의, 각 열쇠는 사용 횟수의 한도가 정해져 있다
enum KeyType {
  padlock, // 1,024회
  button, // 10,000회
  dial, // 30,000회
  finger, // 1,000,000회
}
