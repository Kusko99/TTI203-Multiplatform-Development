import 'dart:io';

void main() {
  print("Digite a distância em polegadas: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double polegadas = double.parse(input);
    double metros = polegadas * 0.0254;
    print(
        "${polegadas.toStringAsFixed(2)} polegadas são ${metros.toStringAsFixed(2)} metros");
  }
}
