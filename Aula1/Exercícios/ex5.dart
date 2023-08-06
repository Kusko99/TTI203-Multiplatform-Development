import 'dart:io';

void main() {
  print("Digite a temperatura em Fahrenheit: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    int fahrenheit = int.parse(input);
    double celsius = (fahrenheit - 32) * (5 / 9);
    print(
        "${fahrenheit.toStringAsFixed(2)} graus fahrenheit são ${celsius.toStringAsFixed(2)} graus celsius ");
  }
}
