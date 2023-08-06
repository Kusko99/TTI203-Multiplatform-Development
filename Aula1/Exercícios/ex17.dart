import 'dart:io';

void main() {
  print("Me diga qual será seu destino?");
  String? destino = stdin.readLineSync();
  switch (destino) {
    case ("tropical"):
      print("Clima quente, sol, calor, sombra e água fresca =)");
    case ("norte"):
      print("Clima frio, leve um agasalho!!!");
    case ("deserto"):
      print("Quente durante o dia, frio a noite, manda um oi pro Aladdin");
    case ("montanha"):
      print("Clima frio e possivelmente com neve, leve os sapotos para neve");
    default:
      print("Só Deus sabe irmão");
  }
}
