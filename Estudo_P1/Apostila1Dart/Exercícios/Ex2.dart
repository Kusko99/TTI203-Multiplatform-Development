import 'dart:math';

void main() {
  int a = 1;
  int b = -3;
  int c = 2;
  num delta = pow(b, 2) - 4 * a * c;
  if (delta > 0) {
    num raiz1 = (b + sqrt(delta)) / 2 * a;
    num raiz2 = (b - sqrt(delta)) / 2 * a;
    print("A equação possui duas raízes");
    print("Raiz 1 = $raiz1");
    print("Raiz 2 = $raiz2");
  } else if (delta == 0) {
    num raiz = (b + sqrt(delta)) / 2 * a;
    print('A equação possui uma raíz');
    print("Raiz = $raiz");
  } else {
    print('A equação não possui raízes');
  }
}
