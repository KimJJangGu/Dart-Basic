// 짝수 판별기 함수: 입력으로 정수를 받아들이는 함수 isEven을 작성
// isEven 함수는 입력된 정수가 짝수인 경우 true를 반환하고, 홀수인 경우 false를 반환
// 예를 들어, isEven(4)는 true를 반환

// void main() {
//   print(isEven(7));
// }


bool isEven(int num) {
  return num % 2 == 0;
}