import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o raio da esfera: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double raio = double.parse(input);
    double volume = (4 / 3) * pi * pow(raio, 3);
    print("O volume da esfera é: ${volume.toStringAsFixed(2)}");
  }
}
