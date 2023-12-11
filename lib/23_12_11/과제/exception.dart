// 프로그램을 작성, 실행 후 runtime error 를 발생
void main() {
  final numString = '10.5';

  // 작성한 코드를 수정, try-catch() 문을 사용하여 예외처리, 예외 발생 시 0으로 처리
  try {
    int num = int.parse(numString);
  } catch (e) {
    print('0');
  }
}
