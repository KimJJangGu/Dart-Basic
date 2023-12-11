import 'dart:io';
import 'dart:convert';

void main() {
  Employee leader = Employee(name: '홍길동', age: 41);
  // Department 안에 leader를 넣어 Employee 홍길동의 정보를 받는다.
  Department department = Department(name: '총무부', leader: leader);

  // 직렬화 하여 company.txt 파일에 쓰는 프로그램 작성
  // company.txt에 넣기
  File file = File('company.txt');
  file.writeAsStringSync(jsonEncode(department.toJson()));

  // 파일 읽기
  String departmentJson = file.readAsStringSync();
  print(departmentJson);

  // Map으로 다시
  Map<String, dynamic> departmentMap = jsonDecode(departmentJson);

  print(departmentMap);

  // print(departmentMap['name']);
  Department department1 = Department.fromJson(departmentMap);

  // print(json['department1']);
  print(department1.leader.toJson());

  String userJson = file.readAsStringSync();
  print(userJson);
}

class Employee {
  String name;
  int age;

  Employee({required this.name, required this.age});

  // 직렬화
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  // 역직렬화
  // factory는 static과 비슷, 하위의 인스턴스를 리턴
  // Factory 생성자는 이름 없이 사용할 수 있음
  // static은 함수이기 때문에 이름이 있어야 함
  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      name: json['name'],
      age: json['age'],
    );
  }
}

class Department {
  String name;
  Employee leader;

  Department({required this.name, required this.leader});

  // 직렬화
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader.toJson(), // leader의 타입을 컴퓨터가 모르기 때문에 tojson으로 직렬화 시켜야 함
    };
  }

  // 역직렬화
  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      name: json['name'],
      leader: Employee.fromJson(json['leader']),
      //leader: json['leader'],
    );
  }
}