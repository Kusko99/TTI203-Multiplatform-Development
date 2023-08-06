import 'dart:io';

void main() {
  print("O álibi é solído (S/N)?");
  String? alibi = stdin.readLineSync();
  if (alibi == "S") {
    print("É inocente");
  } else {
    print("Tem evidências físicas que ligam ao crime (S/N)?");
    String? evidencias = stdin.readLineSync();
    if (evidencias == "S") {
      print("Culpado");
    } else {
      print("Continuar as investigações");
    }
  }
}
