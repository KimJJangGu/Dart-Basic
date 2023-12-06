import 'class_b.dart';
import 'class_y.dart';

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

void main() {
  A a = A();
  print(a);
}
