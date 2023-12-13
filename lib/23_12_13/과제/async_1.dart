import 'dart:io';

// sample.csv 파일을 읽어 와
// “한석봉" 이라는 문자열이 있는지 찾기
// 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성
// async - await 사용할 것
void main() {
  copyFile();
}

Future<void> copyFile() async {
  // sample.csv 파일을 읽는다
  // 위 함수를 실행할 때 파일을 찾을 수 없는 경우 예외 처리를 수행
  try {
    File file = File('sample.csv');

    String fileCopy = await file.readAsString(); // future로 감싸져 있었으니까 await로 풀어준다
    // await Future.error(Exception('테스트'));

    // “한석봉" 이라는 문자열이 있는지 찾기
    // 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성
    File file1 = File('sample_copy.csv');

    await file1.writeAsString(fileCopy.replaceAll('한석봉', '김석봉'));

    print('파일 복사 완료');
  } catch (e) {
    print('파일을 찾을 수 없습니다.');
  }
  // file.readAsString().then((value) => null);
}
