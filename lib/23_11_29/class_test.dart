// class의 정의
class Player{

  // class의 멤버
  String name;
  int hp;
  int mp;



  // constructor: 어떤 데이터들을 넣어야하는지 정의하는 부분
  Player(this.name, this.hp, this.mp);

  // methods: 클래스 내에서 정의된 함수, 객체의 행동을 정의
  void printInfo(){
    print('Name: $name, Hp: $hp, Mp: $mp');
  }
}

void main(){
  //객체 생성
  var player = Player('Kim', 100, 100);
  player.printInfo();
}