import 'dart:io';

void main() {
  print("Qual dia da semana vc gostaria de marcar?");
  String? dia = stdin.readLineSync();
  if (dia == "sabado" || dia == "domingo") {
    print("Dia ruim, não marcar");
  } else {
    print("Tem compromisso no dia (S/N)?");
    String? compromisso = stdin.readLineSync();
    if (compromisso == "S") {
      print("Tens compromisso no dia, não marcar");
    } else {
      print("Excelente dia, marcar");
    }
  }
}
