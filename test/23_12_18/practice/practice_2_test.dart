import 'package:test/test.dart';
import 'package:untitled/23_12_18/practice/practice_2.dart';

void main() {
  test('짝수 = true', () {
    expect(isEven(6), true);
  });

  test('홀수 = false', () {
    expect(isEven(5), false);
  });
}