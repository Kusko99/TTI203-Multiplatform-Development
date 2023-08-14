import 'dart:io';

void main() {
  print("Digite a distância em milhas? ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double milha = double.parse(input);
    double km = milha * 1.60934;
    print(
        "${milha.toStringAsFixed(2)} milhas são ${km.toStringAsFixed(2)} kilomêtros");
  }
}
