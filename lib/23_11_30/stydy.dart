void main(){
  // main 함수
  print('Hello, Dart!');
  print(number);
}

  String hello = 'Hello, Dart!';
// 타입   변수명        변수
  int number = 10; // 정수형, +, - 가능
  bool isMember = false; // 참, 거짓
  double dNumber = 20.0; // 실수형
  num nNumber = 10.5; // 정수, 실수 모두 가능
  var varType = 3; // 타입 추론, 변수를 보고 타입을 결정
  dynamic dyType1;
  // final: 실행, runtime 프로그램 시작 후 결정, 문제가 생기면 예외(exception)
  // 실행 시 값이 결정, 사용 단계에서 결정됨
  // const: 처음부터 값이 결정(compile time) 개발단계에서 결정됨


// if(isMember){
    // welcome
// } else(){
    // sign up
//  }

  // final: 한번 값을 할당하면 변경 불가, 초기화 후 값 변경 불가
  //        -
  // const: 한번 값을 할당하면 변경 불가, 초기화 후 값 변경 불가
  //        - class-wide: 객체에 종속이 아니고, 클래스에 종속된다.

