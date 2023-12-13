import 'dart:convert';

void main() async {
  String movie = await getMovieInfo();

  Map<String, dynamic> movieMap = jsonDecode(movie);

  print(movieMap['director']);
}

// 다음과 같은 영화 정보 Json 을 반환하는 함수가 있다
Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 3));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
  // 위 함수를 사용하여 director 가 누군지 출력
}