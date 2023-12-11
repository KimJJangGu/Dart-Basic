import 'dart:io';

void main() {
  final source = File('source');

  // 읽거나 쓰고 닫는다
  source.writeAsStringSync('이건 제일 최근에 작성한 원본 글임');

  copy('source', 'target');
}

// 파일을 복사하는 함수를 작성
void copy(String source, String target) {
  File(source).copySync(target);

  print('파일 복사');
}

