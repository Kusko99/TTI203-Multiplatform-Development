import 'dart:io';

void main() {
  int numero_funcionario = 0, horas_trabalhadas = 0;
  double salario = 0;
  String? input = stdin.readLineSync();
  if (input != null) {
    numero_funcionario = int.parse(input);
  }
  input = stdin.readLineSync();
  if (input != null) {
    horas_trabalhadas = int.parse(input);
  }
  input = stdin.readLineSync();
  if (input != null) {
    salario = double.parse(input);
  }

  double salario_final = salario * horas_trabalhadas;

  print("NUMBER = $numero_funcionario");
  print("SALARY = U\$ ${salario_final.toStringAsFixed(2)}");
}
