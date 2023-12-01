class Calculator{
  // 덧셈 함수를 작성
    void main(){
      int result = add(27, 10);
      print('27 + 10 = $result');
    }
      int add(int a, int b){
        return a + b;
      }

  // 뺄셈 함수를 작성
      int minus(int a, int b){
        return a - b;
      }

  // 곱셈 함수를 작성
      int multiply(int a, int b){
        return a * b;
      }

  // 나눗셈 함수를 작성
      int dde(int a, int b){
        return a ~/ b;
      }
}

void main(){
  Calculator calculator = Calculator();
}