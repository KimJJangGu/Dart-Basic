// Dart나 다른 프로그래밍 언어에서 main 함수는 프로그램의 진입점으로 사용
// 프로그램이 실행될 때 운영 체제나 런타임 환경은 main 함수를 찾아서 거기서부터 코드를 실행
void main() {
  // void: return 값이 없는 함수

  // if-else문 : 조건에 따라 코드 실행 여부 결정
  int number = 27;
  if (number > 30) {
    print('number is greater than 30');
  } else {
    print('number is less than 30');
  }

  // swich-case문 : 다중 분기 처리
  String fruit = '바나나';
  switch (fruit) {
    case '사과':
      print('이건 사과야');
      break;
    case '바나나':
      print('이건 맛있는 바나나야');
      break;
    default:
      print('아무것도 아니야');
  }

  // for-in문 : 리스트나 맵의 모든 항목에 대해 반복
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  // while문 : 조건이 참인 동안 코드 반복 실행, 조건이 처음부터 거짓이면 실행 안됨
  int count = 0;
  while (count < 5) {
    print(count);
    count++;
  }

  // do-while문 : 코드를 최소한 한번 실행하고, 조건이 참인 동안 반복
  // 조건이 처음부터 거짓이어도 한번은 실행 됨
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 3);

  // 핵심 라이브러리 가져오기
  // import 'dart:math';

  // 외부 패키지의 라이브러리 가져오기
  // import 'package:test/cleric_1.dart';

  // 파일 가져오기
  // import 'path/to/my_other_file.dart';

  
}