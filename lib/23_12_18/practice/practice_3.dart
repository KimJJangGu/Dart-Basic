// 최댓값 찾기 함수: 입력으로 숫자로 이루어진 리스트를 받아들이는 함수 findMax를 작성
// findMax 함수는 입력된 리스트에서 가장 큰 값을 찾아 반환
// 예를 들어, findMax([2, 5, 1, 9, 3])는 9를 반환
import 'dart:math';
import 'package:collection/collection.dart';

// void main() {
//   print(findMax([2, 5, 1, 9, 3]));
// }

int findMax(List<int> numbers) {
  return numbers.max;
}