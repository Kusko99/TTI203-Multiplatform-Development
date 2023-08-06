import 'dart:io';
import 'dart:math';

double a = 0;
double b = 0;
double c = 0;

void main() {
  print("Digite as raizes da equação: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    List<String> valores = input.split(" ");
    a = double.parse(valores[0]);
    b = double.parse(valores[1]);
    c = double.parse(valores[2]);
    print(valores);
  }

  double delta = (b * b) - (4.0 * a * c);
  print(delta);

  if (delta > 0) {
    double raiz1 = (-b - sqrt(delta)) / 2 * a;
    double raiz2 = (-b + sqrt(delta)) / 2 * a;
    print("A equação tem duas raízes:");
    print("Raiz1: ${raiz1.toStringAsFixed(2)}");
    print("Raiz2: ${raiz2.toStringAsFixed(2)}");
  } else if (delta == 0) {
    double raiz = -b / 2 * a;
    print("A equação tem uma raiz: ");
    print("Raiz: ${raiz.toStringAsFixed(2)}");
  } else {
    print("A equação não tem raízes");
  }
}
