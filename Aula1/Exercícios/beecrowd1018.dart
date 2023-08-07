import 'dart:io';

void main() {
  double quantia = 0;
  print("Digite o valor em reias: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    quantia = double.parse(input);
  }
  print("$quantia");
  List<int> notas = [100, 50, 20, 10, 5, 2, 1];

  for (int i = 0; i < notas.length; i++) {
    int quantidade = quantia ~/ notas[i];
    print("$quantidade notas(s) de R\$ ${notas[i].toStringAsFixed(2)}");
    quantia = quantia - quantidade * notas[i];
  }
}
