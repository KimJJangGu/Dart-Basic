void main() async {
  String timeout = await timeoutFuture().timeout(Duration(seconds: 5), onTimeout: () => 'timeout');

  //Future<String> timeout = timeoutFuture();

  //String out = await timeout.timeout(Duration(seconds: 5), onTimeout: (){
  //  return 'timeout';
  //});

  //
  print(timeout);
}

// 다음 Future 함수를 실행하고 5초 이내에 완료되지 않으면 “timeout”을 출력
Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'Ok';
}

