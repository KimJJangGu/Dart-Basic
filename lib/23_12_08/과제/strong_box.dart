// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의
class StrongBox<E> {
  // 금고 클래스에 담는 인스턴스의 타입은 미정
  E? _present;

  // put() 메서드로 인스턴스를 저장
  void put(E present) => _present = present;

  // get() 메서드로 인스턴스를 얻을 있음
  E? get() => _present;
}

void main() {
  StrongBox<String> strongbox = StrongBox();

  // put() 메서드로 인스턴스를 저장
  strongbox.put('금괴');

  // get() 메서드로 인스턴스를 얻을 있음
  // get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨
  var _present = strongbox.get();

  // 금고에는 1개의 인스턴스를 담을 수 있음
  if (_present != null) {
    print(_present);
  }
}
