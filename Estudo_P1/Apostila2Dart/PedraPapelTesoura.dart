import 'dart:io';
import 'dart:math';

enum jogadas { pedra, papel, tesoura }

void main() {
  print("Bem-vindo ao jogos");
  print("Escolha sua jogada");
  print("(0) - pedra");
  print("(1) - papel");
  print("(2) - tesoura");
  int escolha = int.parse(stdin.readLineSync()!);
  Random random = Random();
  int escolha_pc = random.nextInt(3);
  String jogada = jogadas.values[escolha].name;
  String jogada_pc = jogadas.values[escolha_pc].name;
  print('O computador jogou $jogada_pc');
  if (jogada == jogada_pc) {
    print('Empatou');
  } else if (jogada == 'pedra') {
    if (jogada_pc == 'tesoura') {
      print('Ganhou!!!');
    } else if (jogada_pc == 'papel') {
      print('Perdeu =(');
    }
  } else if (jogada == 'papel') {
    if (jogada_pc == 'tesoura') {
      print('Perdeu =(');
    } else if (jogada_pc == 'pedra') {
      print('Ganhou!!!');
    }
  } else if (jogada == 'tesoura') {
    if (jogada_pc == 'pedra') {
      print('Perdeu =(');
    } else if (jogada_pc == 'papel') {
      print('Ganhou!!!');
    }
  }
}
