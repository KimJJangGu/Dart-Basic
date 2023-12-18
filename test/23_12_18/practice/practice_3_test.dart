import 'package:test/test.dart';
import 'package:untitled/23_12_18/practice/practice_3.dart';

void main() {
  test('가장 큰 수를 반환하는지 테스트', () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
  });
}