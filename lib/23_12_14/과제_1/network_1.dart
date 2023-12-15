import 'package:http/http.dart' as http;
import 'dart:convert';
import 'movie.dart';

// 영화정보를 가져와서 모델에 담고 json 형태로 출력
// https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1
void main() async {
  final MovieData movieData = await getMovieInfo();
  print(movieData.toJson());
}

Future<MovieData> getMovieInfo() async {
  final http.Response response =
      await http.get(Uri.parse('https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  final Map<String, dynamic> getMovieInfoMap = jsonDecode(response.body);
  return MovieData.fromJson(getMovieInfoMap);
}