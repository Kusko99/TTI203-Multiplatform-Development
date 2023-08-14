import 'dart:io';
import 'dart:math';

void main() {
  List<String> jogadas = ["tesoura", "papel", "pedra"];
  print("Qual a sua jogada");
  String? jogador = stdin.readLineSync();

  int computador = Random().nextInt(3);
  String jogada_comutador = jogadas[computador];

  print("Sua jogada: $jogador");
  print("Jogada do Computador: $jogada_comutador");

  switch (jogada_comutador) {
    case "tesoura":
      switch (jogador) {
        case "tesoura":
          print("Empate");
        case "pedra":
          print("Ganhou");
        case "papel":
          print("Perdeu");
      }
    case "papel":
      switch (jogador) {
        case "tesoura":
          print("Ganhou");
        case "pedra":
          print("Perdeu");
        case "papel":
          print("Empate");
      }
    case "pedra":
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
