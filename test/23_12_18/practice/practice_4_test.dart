import 'package:test/test.dart';
import 'package:untitled/23_12_18/practice/practice_4.dart';

void main() {
  test('문자열을 뒤집어 반환하는지 확인', () {
    expect(reverseString('Hello'), 'olleH');
  });
}