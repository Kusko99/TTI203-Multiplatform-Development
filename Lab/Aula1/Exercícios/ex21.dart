import 'dart:io';

void main() {
  print("A ação está em alta (S/N)?");
  String? acao = stdin.readLineSync();
  print("A empresa está tendo lucro (S/N)?");
  String? lucro = stdin.readLineSync();
  if (acao == "S" && lucro == "S") {
    print("Hora de Vender");
  } else if (acao == "N" && lucro == "N") {
    print("Hora de comproar");
  } else {
    print("Melhorar esperar");
  }
}
