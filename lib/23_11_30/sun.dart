void main(){

  // M3. 연락처 문자열 결합
  String name = '모두연';
  String snum1 = '010';
  String snum2 = '1234';
  String snum3 = '5678';

  String result = name + ' ' + snum1 + '-' + snum2 + '-' + snum3;
  print(result);

  // M4. 등차수열 예제 생성기 만들어 보기
  for(int i = 5; i < 100; i++){
    if(i % 10 == 5){
      print(i);
    }
  }

}