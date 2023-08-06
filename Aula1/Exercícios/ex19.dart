import 'dart:io';

void main() {
  int curtidas = 0, compartilhamentos = 0;
  print("Quantas curtidas teve a sua postagem?");
  String? input = stdin.readLineSync();
  if (input != null) {
    curtidas = int.parse(input);
  }
  print("Quantos compartilhamentos teve a sua postagem?");
  input = stdin.readLineSync();
  if (input != null) {
    compartilhamentos = int.parse(input);
  }

  if (curtidas < 10 && compartilhamentos < 5) {
    print("Nada popular");
  } else if (curtidas > 100 && compartilhamentos > 50) {
    print("Só não é mais popular que o Bossini");
  } else {
    print("MID");
  }
}
