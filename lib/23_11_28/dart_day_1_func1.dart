// 함수는 특수한 경우를 제외하고 인수(넣어주는 값)와 반환하는 값의 타입을 지정해주는 것이 권장됨
// 몇몇 특수한 경우 void와 같이 타입과 반환 값을 지정하지 않을 수도 있음
// 간단한 함수는 =>(화살표) 단축 구문으로 만들 수도 있으며, 함수가 다른 함수의 인수로 사용될 수도 있음

/*void main() {
  // 타입 지정된 함수
  int add(int a, int b) {
    return a + b;
  }

  // 화살표 함수: 한줄일 때 사용, 람다식
  int multiply(int a, int b) => a * b;

  // forEach()를 사용한 함수 인수와 익명 함수
  var numbers = [1, 2, 3, 4, 5];
  numbers.where((number) => number.isEven).forEach(print);
}*/


void main() {
  // 함수 호출
  printMessage('Hello, Dart!');

  // 함수 호출과 반환값 사용
  int result = addNumbers(3, 5);
  print('3 + 5 = $result');

  // 선택적 매개변수 사용
  showInfo('Alice');
  showInfo('Bob', age: 30);

  // 위치 기반 매개변수 사용
  printInfo('Charlie', 35);
}

// 함수 선언: 반환 값이 없는 함수
void printMessage(String message) {
  print(message);
}

// 함수 선언: 인자 두 개를 받아 더한 결과를 반환하는 함수
int addNumbers(int a, int b) {
  return a + b;
}

// 함수 선언: 선택적 매개변수를 사용하는 함수
void showInfo(String name, {int? age}) {
  print('Name: $name');
  if (age != null) {
    print('Age: $age');
  }
}

// 함수 선언: 위치 기반 매개변수를 사용하는 함수
void printInfo(String name, int age) {
  print('Name: $name');
  print('Age: $age');
}