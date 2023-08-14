import 'dart:io';
import 'dart:math';

enum jogo { PEDRA, PAPEL, TESOURA }

void main() {
  print("Qual a sua jogada");
  String? jogador = stdin.readLineSync();

  int computador = Random().nextInt(3);
  String jogada_comutador = jogo.values[computador].name;

  print("Sua jogada: $jogador");
  print("Jogada do Computador: $jogada_comutador");

  switch (jogada_comutador) {
    case "TESOURA":
      switch (jogador) {
        case "tesoura":
          print("Empate");
        case "pedra":
          print("Ganhou");
        case "papel":
          print("Perdeu");
      }
    case "PAPEL":
      switch (jogador) {
        case "tesoura":
          print("Ganhou");
        case "pedra":
          print("Perdeu");
        case "papel":
          print("Empate");
      }
    case "PEDRA":
      switch (jogador) {
        case "tesoura":
          print("Perdeu");
        case "pedra":
          print("Empate");
        case "papel":
          print("Ganhou");
      }
  }
}
