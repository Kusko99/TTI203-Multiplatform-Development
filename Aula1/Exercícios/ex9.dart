import 'dart:io';

void main() {
  print("Digite o peso em libras: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double libras = double.parse(input);
    double kilos = libras * 0.453592;
    print(
        "${libras.toStringAsFixed(2)} libras são ${kilos.toStringAsFixed(2)} kilos");
  }
}
