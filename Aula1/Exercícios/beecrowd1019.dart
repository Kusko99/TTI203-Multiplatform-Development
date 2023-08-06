import 'dart:io';

void main() {
  int tempo = 0;
  String? input = stdin.readLineSync();
  if (input != null) {
    tempo = int.parse(input);
  }

  int horas = tempo ~/ 3600;
  tempo = tempo - (horas * 3600);
  int minutos = tempo ~/ 60;
  tempo = tempo - (minutos * 60);
  int segundos = tempo;

  print("$horas:$minutos:$segundos");
}
