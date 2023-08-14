import 'dart:io';

void main() {
  print("O inimigo está atacando (S/N)?");
  String? atacando = stdin.readLineSync();
  print("As defesas estão boas (S/N)?");
  String? defesas = stdin.readLineSync();

  if (atacando == "S" && defesas == "S") {
    print("Hora de contra-atacar");
  } else if (atacando == "S" && defesas == "N") {
    print("Hora de melhorar as defesas");
  } else {
    print("Coletar recursos");
  }
}
