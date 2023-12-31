// 문자열 뒤집기 함수: 입력으로 문자열을 받아들이는 함수 reverseString을 작성
// reverseString 함수는 입력된 문자열을 뒤집어 반환
// 예를 들어, reverseString("Hello")는 "olleH"를 반환
void main(){
  print(reverseString('Hello'));
}

String reverseString(String a) {
  return a.split('').reversed.join();
  // split: 문자 1개씩 분리하여 리스트로 변환
  // reversed: 리스트의 저장 순서를 역순으로 변경, Iterable 리턴
  // join: 리스트의 요소들을 하나의 문자열로 합치고 리턴
}
