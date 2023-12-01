// 변수는 프로그램에서 값을 저장하고 참조할 때 사용하는 중요한 개념
// 변수는 선언과 초기화가 필요
// 변수는 타입이 필요
// Dart는 Null - Safety가 중요하기 때문에 Null을 허용하지 않는 변수를 사용하는 경우 반드시 그 값을 초기화 해야 함
// 초기화되지 않은 변수는 자동으로 Null 값을 가지게 됨
// Dart는 변수를 명시적으로 선언해줄 수도 있고, 추론할 수도 있음


// 변수 선언과 초기화
var name = 'Bob';

// 변수 타입 지정
Object objName = 'Bob';

// 변수 타입 지정 (명시적으로)
String strName = 'Bob';

// final 변수 선언
final finalName = 'Bob';

// const 변수 선언
const bar = 1000000;
const double atm = 1.01325 * bar;
const baz = [];

void main() {
  print(name); // 'Bob' 출력
  print(objName); // 'Bob' 출력
  print(strName); // 'Bob' 출력
  print(finalName); // 'Bob' 출력
  print(baz); // [] 출력
}