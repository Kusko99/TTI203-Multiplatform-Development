import 'dart:io';

void main() {
  print("Digite a distância em quilomêtros? ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double km = double.parse(input);
    double milha = km * 0.62137;
    print(
        "${km.toStringAsFixed(2)} kilomêtros são ${milha.toStringAsFixed(2)} milhas");
  }
}
