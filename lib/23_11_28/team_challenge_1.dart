void main(){
  List<String> players = ['player1', 'player2', 'player3', 'player4']; // 4명의 'player'를 List를 이용해 만듦
  int currentPlayerIndex = 0; // List의 0번, 'player1'에 접근하기 위한 코드
  int clapCount = 0; // clap을 한 갯수를 세기 위한 코드
  int roolCount = 0; // rool을 한 갯수를 세기 위한 코드
  int ahhCount = 0; // ahh를 한 갯수를 세기 위한 코드
  List<int> clapCountsByPlayer = [0, 0, 0, 0]; // 각 'player' 당 몇 번의 clap을 했는지 세기 위한 코드

  for(int i = 1; i <= 100; i++){ // 1부터 100까지 진행되는 반복문
    String currentPlayer = players[currentPlayerIndex]; // 각각의 'player'가 'ahh', 'clap', 'rool', 그 외의 숫자를 출력하기 위한 코드

    if(i % 30 == 0){ // 30의 배수일 때
      print('$currentPlayer: ahh'); // 30의 배수가 될 때 'ahh'를 출력
      ahhCount++; // 'ahh' 횟수 추가
    } else if(i % 3 == 0){ // else if : ~가 아니라면 / 3의 배수일 때
      print('$currentPlayer: clap'); // 3의 배수가 될 때 'clap'을 출력
      clapCount++; // 'clap' 횟수 추가
      clapCountsByPlayer[currentPlayerIndex]++; // 각 'player' 당 'clap'을 한 수를 카운트
    } else if(i % 10 == 0){ // 10의 배수일 때
      print('$currentPlayer: rool'); // 10의 배수가 될 때 'rool'을 출력
      roolCount++; // 'rool' 횟수 추가
    } else{
      print('$currentPlayer: $i'); // 위 세 가지에 모두 해당이 안된다면 'i'를 출력
    }

    currentPlayerIndex = (currentPlayerIndex + 1) % players.length; // 'player1'부터 'player4'까지 순차적으로 반복문을 실행하기위한 코드
  }

  print('\nclap의 총 횟수: $clapCount'); // 게임에서 나온 총 'clap'의 횟수 출력
  print('rool의 총 횟수: $roolCount'); // 게임에서 나온 총 'rool'의 횟수 출력
  print('ahh의 총 횟수: $ahhCount'); // 게임에서 나온 총 'ahh'의 횟수 출력

  int maxClapCount = 0; // 가장 많은 'clap' 횟수
  String playerWithMaxClap = ''; // 가장 많은 'clap'을 한 플레이어

  for(int i = 0; i < players.length; i++){ // 'player[i]' 'player' 당 'clap' 횟수를 지정하기 위한 코드
    int count = clapCountsByPlayer[i]; // List의 각 'player' 당 'clap'한 횟수를 카운트
    print('${players[i]}: $count'); // 'player' 당 'clap' 한 횟수를 출력

    if(count > maxClapCount){ // count가 maxClapCount보다 크다면
      maxClapCount = count; // maxClapCount = count
      playerWithMaxClap = players[i]; // 가장많은 'clap'을 한 player = player[i]
    }
  }

  print('\n가장 많은 clap을 한 플레이어: $playerWithMaxClap'); // 가장 많은 'clap'을 한 플레이어 출력
}