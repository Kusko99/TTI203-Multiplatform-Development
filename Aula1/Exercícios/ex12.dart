import 'dart:io';

void main() {
  print("Digite o peso em onças: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double oncas = double.parse(input);
    double gramas = oncas * 28.3495;
    print(
        "${oncas.toStringAsFixed(2)} onças são ${gramas.toStringAsFixed(2)} gramas");
  }
}
