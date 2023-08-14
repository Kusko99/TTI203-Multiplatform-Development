import 'dart:io';

void main() {
  print("Bem-Vindo ao Restaurante do Bossini =)");
  print("Digite a hora que quer chegar no restaurante: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    int hora = int.parse(input);
    if (hora >= 8 && hora < 20) {
      if (hora >= 14 && hora < 16) {
        print("Bossini está almoçando,restaurante fechado");
      } else {
        print("Bem-vindo, Bossini iria te atender em instantes");
      }
    } else if (hora < 0 && hora > 24) {
      print("Não é uma hora valída, o dia só tem 24 horas");
    } else {
      print("Restaurante fechando, Bossini está a mimir");
    }
  }
}
