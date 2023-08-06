import 'dart:io';
import 'dart:math';

void main() {
  double peso = 0, altura = 0;
  print("Digite o seu peso em Kilos: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    peso = double.parse(input);
  }
  print("Digite a sua altura em metros: ");
  input = stdin.readLineSync();
  if (input != null) {
    altura = double.parse(input);
  }
  double IMC = peso / pow(altura, 2);

  print("Seu IMC é ${IMC.toStringAsFixed(2)}");

  if (IMC < 18.5) {
    print("Abaixo do peso");
  } else if (IMC >= 18.5 && IMC < 25) {
    print("Peso Normal");
  } else if (IMC >= 25 && IMC < 30) {
    print("Sobrepeso");
  } else if (IMC >= 30 && IMC < 35) {
    print("Obsidade grau I");
  } else if (IMC >= 35 && IMC < 40) {
    print("Obsidade grau II");
  } else if (IMC >= 40) {
    print("Obsidade grau III");
  } else {
    print("NUM SEI");
  }
}
