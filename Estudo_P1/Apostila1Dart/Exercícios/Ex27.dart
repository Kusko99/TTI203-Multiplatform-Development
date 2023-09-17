import "dart:math";
import 'dart:io';

enum jogadas { pedra, papel, tesoura }

void main() {
  print("Bem-vindo ao pedra papel tesoura");
  print("Você estará jogando contra a máquina");
  print("Escolha sua jogada: ");
  print("(1) - pedra");
  print("(2) - papel");
  print("(3) - tesoura");
  String ent = stdin.readLineSync()!;
  int jogada = int.parse(ent);
  Random random = Random();
  int jogada_pc = random.nextInt(3);
}
