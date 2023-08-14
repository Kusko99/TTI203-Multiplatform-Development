import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o raio do círculo: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    int raio = int.parse(input);
    num area = pi * pow(raio, 2);
    print("Area do círculo de raio $raio é: ${area.toStringAsFixed(2)}");
  }
}
