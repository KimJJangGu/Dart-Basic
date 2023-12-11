void main() {
  int parseInt = parse('10');

  print(parseInt);
}

// 프로그램을 작성, 실행 후 runtime error 를 발생
// try-catch() 문을 사용하여 예외처리, 예외 발생 시 0으로 처리
int parse(String numString) {
  int num;
  try {
    num = int.parse(numString);
  } catch (e) {
    num = 0;
  }
  return num;
}