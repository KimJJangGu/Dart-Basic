void main(){
  // 대한민국의 도시 이름 모음 (순서 상관 없음)
  List<String> koreaCity = ['서울', '부산', '인천'];

  // 10명 학생의 시험 점수
  Map<String, int> score = {
    '가': 90,
    '나': 80,
    '다': 81,
    '라': 83,
    '마': 95,
    '바': 97,
    '사': 85,
    '아': 94,
    '자': 91,
    '차': 89,
  };

  // 대한민국의 도시별 인구수 (순서 상관 없음)
  Map<String, int> cityPeople = {
    '서울': 99999,
    '부산': 99999,
    '인천': 99999
  };

  print(koreaCity);

  print(score);

  print(cityPeople);
}