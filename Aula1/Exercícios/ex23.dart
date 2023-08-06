import 'dart:io';

void main() {
  print("Como está a pressão do ar?");
  String? pressao_ar = stdin.readLineSync();
  print("A ar está seco ou umido?");
  String? umidade = stdin.readLineSync();

  if (pressao_ar == "baixa" && umidade == "umido") {
    print("Vai chover");
  } else if (pressao_ar == "alta" && umidade == "seco") {
    print("Ensolarado");
  } else {
    print("Parcialmente nubaldo");
  }
}
