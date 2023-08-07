import 'dart:io';

void main() {
  print("Digite o alimento que comer: ");
  String? comer = stdin.readLineSync();

  switch (comer) {
    case ("omelete"):
      print("Sua recefeição tem 154 calorias por 100 gramas");
    case ("hamburger"):
      print("Sua recefeição tem 295 calorias por 100 gramas");
    case ("bife a cavalo"):
      print("Sua recefeição tem 356 calorias por 100 gramas");
    case ("pizza"):
      print("Sua recefeição tem 266 calorias por 100 gramas");
    case ("sorvete"):
      print("Sua recefeição tem 207 calorias por 100 gramas");
    default:
      print("Só deus sabe quantas calorias");
  }
}
